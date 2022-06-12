# -*- coding: utf-8 -*-
"""soi_nn_2.ipynb

Automatically generated by Colaboratory.

Original file is located at
    https://colab.research.google.com/drive/1kuyL5t8c6WfGCWK_PBxVk1aYgA3NNXG-

#Data Cleaning and Transformation
"""

#Load data
import pandas as pd
import random
data = pd.read_csv('./files/problem_dataset.csv')

# Remove the blank columns and unnecessary columns
data.drop('tce_rogue_flag', inplace=True, axis=1)
data.drop('tce_insol', inplace=True, axis=1)
data.drop('tce_insol_err', inplace=True, axis=1)
data.drop('kepid', inplace=True, axis=1)
# data.drop('tce_plnt_num', inplace=True, axis=1)

# Last column is labels(i.e. y), and rest are features(i.e. x)
# Shuffle data before partitioning


data = data.sample(frac=1) 
y = data['av_training_set']
x = data.drop('av_training_set', axis=1)

print(y)

# Partition dataset into training part and testing part
x_train = x[:15000].copy()
y_train = y[:15000].copy()
x_test = x[13000:].copy()
y_test = y[13000:].copy()

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

y = pd.DataFrame(string_to_onehot(y))
print(y)

y_train.shape

# Get the one-hot encoding for training and testing labels
y_train = string_to_onehot(y_train)
y_test = string_to_onehot(y_test)


"""#Creating the Model"""

from keras.models import Sequential
from keras.layers import Dense
model = Sequential()
import tensorflow as tf

model.add(tf.keras.layers.BatchNormalization(input_dim=22))
model.add(Dense(100, activation='relu'))

# model.add(Dense(25, activation='relu'))
# model.add(Dense(10, activation='relu'))
# model.add(Dense(25, activation='relu'))
# model.add(Dense(10, activation='relu'))
# model.add(Dense(25, activation='relu'))

model.add(Dense(512, activation='relu'))
model.add(tf.keras.layers.Dropout(rate=0.3))
model.add(tf.keras.layers.BatchNormalization())

model.add(Dense(100, activation='relu'))
model.add(tf.keras.layers.Dropout(rate=0.3))
model.add(tf.keras.layers.BatchNormalization())


model.add(Dense(40, activation='relu'))
model.add(tf.keras.layers.Dropout(rate=0.3))
model.add(tf.keras.layers.BatchNormalization())

# model.add(Dense(30, activation='relu'))
# model.add(tf.keras.layers.Dropout(rate=0.3))
# model.add(tf.keras.layers.BatchNormalization())
# model.add(Dense(20, activation='relu'))
# model.add(tf.keras.layers.Dropout(rate=0.3))
# model.add(tf.keras.layers.BatchNormalization())
# model.add(Dense(10, activation='relu'))

# model.add(Dense(512, activation='relu'))
# model.add(Dense(512, activation='relu'))
# model.add(Dense(512, activation='relu'))
model.add(Dense(4, activation='softmax'))

model.summary()

model_1 = Sequential()
model_1.add(Dense(32, input_dim=22, activation='relu'))
model_1.add(Dense(64, activation='relu'))
model_1.add(Dense(4, activation='softmax'))


model_1.summary()

"""#Training the Model"""

import tensorflow as tf
trainer = tf.keras.optimizers.SGD(learning_rate=0.45)

model.compile(optimizer='adam',loss = 'categorical_crossentropy', metrics=['accuracy'])
model_1.compile(optimizer='adam',loss = 'categorical_crossentropy', metrics=['accuracy'])

print(y_train)
y_train = pd.DataFrame(y_train)
print(y_train)

hist = model.fit(x, y, epochs=100, batch_size=500)


model.save('files/model')


# Download the model from the colab files

import pandas as pd

# convert the training history to a dataframe
history_df = pd.DataFrame(hist.history)
# use Pandas native plot method to plot loss vs epochs
history_df['loss'].plot();

"""#Predicting the Labels"""

y_test = pd.DataFrame(y_test)
loss, accuracy = model.evaluate(x_test,y_test)    #testing
print("Model accuracy: %.2f"% (accuracy*100))

print(accuracy)

print(loss)

