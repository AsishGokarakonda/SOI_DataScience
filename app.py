from flask import Flask, render_template, request, send_file
import pandas as pd
from keras.models import Sequential
from keras.layers import Dense
import tensorflow as tf

model = tf.keras.models.load_model('files/model')
app = Flask(__name__)

def string_to_onehot(arr):  # Convert text labels to one-hot encoding for categorical classification
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

def onehot_to_string(int_arr):  # Convert back one-hot to text
  res = []

  for x in int_arr:
    if max(x) == x[0]:
      res.append('AFP')
    elif max(x) == x[1]:
      res.append('NTP')
    elif max(x) == x[2]:
      res.append('PC')
    elif max(x) == x[3]:
      res.append('UNK')
  return res


@app.route('/',methods=['GET'])

def hello_world():
    return render_template('index.html')


@app.route('/',methods=['POST'])

def predict ():
    csvfile = request.files['imagefile']
    csv_path = "./files/" + csvfile.filename
    csvfile.save(csv_path)

    data = pd.read_csv(csv_path)
    data.drop('tce_rogue_flag', inplace=True, axis=1)
    data.drop('tce_insol', inplace=True, axis=1)
    data.drop('tce_insol_err', inplace=True, axis=1)
    data.drop('kepid', inplace=True, axis=1)

    x_test = data.drop('av_training_set', axis=1)
    y_test = pd.DataFrame(string_to_onehot(data['av_training_set']))
    result = model.predict(x_test) 
    result = onehot_to_string(result)
    result_csv = pd.DataFrame(result, index=None, columns=['av_training_set'])
    actual_result = pd.DataFrame(data['av_training_set'], columns=['av_training_set'])
    # compare the predicted and actual results
    result_csv.columns = ['av_training_set']
    result_csv.to_csv('files/result.csv',index=False)
    return render_template('index.html', results_csv='/result.csv')

@app.route('/files/<path:path>', methods=['GET'])
def down_file(path):
    path = "./files/" + path
    file = open(path, 'rb')
    return send_file(file, as_attachment=True, attachment_filename='result.csv')


@app.route('/readme')

def readme():
    return render_template('readme.html')
  
@app.route('/about')

def about():
    return render_template('about.html')
  
    
if __name__ == '__main__':
    app.run(port=3000,debug=True)