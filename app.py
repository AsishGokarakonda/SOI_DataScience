from re import T
from collections import Counter
import uuid
from flask import Flask, render_template, request, send_file
import pandas as pd
import tensorflow as tf
import numpy as np
import matplotlib.pyplot as plt

import os
os.makedirs('files/img', exist_ok=True)
os.makedirs('files/csv', exist_ok=True)

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

    result = model.predict(data)
    result = onehot_to_string(result)
    result_csv = pd.DataFrame(result, columns=['av_training_set'])

    label_count = Counter(result)
    res_df = pd.DataFrame.from_dict(label_count, orient='index')
    ax = res_df.plot(kind='bar', title='No.of predicted lobels', legend = None )
    ax.bar_label(ax.containers[0])
    
    unique_id  = uuid.uuid4().hex
    path_to_csv = "files/csv/result_" + unique_id + ".csv"
    path_to_img = "files/img/result_" + unique_id + ".png"
    plt.savefig(path_to_img)
    result_csv.to_csv(path_to_csv,index=False)

    return render_template('index.html', response_id = unique_id)

@app.route('/files/<path:path>', methods=['GET'])
def down_file(path):
    path = "./files/" + path
    file = open(path, 'rb')
    attachment_filename = path.split('/')[-1]
    return send_file(file, as_attachment=True, attachment_filename=attachment_filename)


@app.route('/readme')

def readme():
    return render_template('readme.html')
  
@app.route('/about')

def about():
    return render_template('about.html')
  
    
if __name__ == '__main__':
    app.run(port=3000,debug=True)