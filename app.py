from flask import Flask, render_template, request
import pandas as pd
from keras.models import Sequential
from keras.layers import Dense
import tensorflow as tf

app = Flask(__name__)

@app.route('/',methods=['GET'])

def hello_world():
    return render_template('index.html')


@app.route('/',methods=['POST'])

def predict ():
    imagefile = request.files['imagefile']
    image_path = "./files/" + imagefile.filename
    imagefile.save(image_path)
    data = pd.read_csv(image_path)
    data.drop('tce_rogue_flag', inplace=True, axis=1)
    data.drop('tce_insol', inplace=True, axis=1)
    data.drop('tce_insol_err', inplace=True, axis=1)

    y = data['av_training_set']
    x = data.drop('av_training_set', axis=1)


    # print(y)


    x_train = x[:13000].copy()
    y_train = y[:13000].copy()
    x_test = x[13000:].copy()
    y_test = y[13000:].copy()
    def string_to_onehot(arr):
        int_arr = []

        for x in arr:
            if x=='AFP':
                int_arr.append([1,0,0,0])
            
            elif x=='NTP':
                int_arr.append([0,1,0,0])
            
            elif x=='PC':
                int_arr.append([0,0,1,0])
            
            elif x=='UNK':
                int_arr.append([0,0,0,1])
        
        return int_arr

    def onehot_to_string(int_arr):
        arr = []

        for x in int_arr:
            if x==[1,0,0,0]:
                int_arr.append('AFP')
            
            elif x==[0,1,0,0]:
                int_arr.append('NTP')
            
            elif x==[0,0,1,0]:
                int_arr.append('PC')
            
            elif x==[0,0,0,1]:
                int_arr.append('UNK')
    y_train = string_to_onehot(y_train)
    y_test = string_to_onehot(y_test)
    model = Sequential()
    model.add(Dense(36, input_dim=23, activation='relu'))
    model.add(Dense(20, activation='relu'))
    model.add(Dense(20, activation='relu'))
    model.add(Dense(20, activation='relu'))
    model.add(Dense(4, activation='softmax'))

    model.summary()
    model.compile(optimizer='adam',loss = 'categorical_crossentropy', metrics=['accuracy'])
    y_train = pd.DataFrame(y_train)
    # print(y_train)
    model.fit(x_train, y_train, epochs=200, batch_size=500)
    y_test = pd.DataFrame(y_test)
    _, accuracy = model.evaluate(x_test,y_test)    #testing
    print("Model accuracy: %.2f"% (accuracy*100))
    acc = accuracy*100


    return render_template('index.html',accuracy=acc)

    
if __name__ == '__main__':
    app.run(port=3000,debug=True)