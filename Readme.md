# Execution Details

1. Clone the repository using `git clone <repo-link>`.

2. Set up the python virtual environment using following commands:
    1) > python -m venv venv
    2) > source /home/<username>/Desktop/SOI_DataScience/venv/bin/activate 
    (or source /path/to/venv/bin/activate)
    2) > pip install -r requirements.txt

3. Now run the app using: `python3 app.py`

4. The app will start running at port 3000.

(Note: To deactivate the venv, just use: `deactivate`)

# Details about the Model

The Neural Network model created for the project has some larger initial layers which enable the computation, followed by gradually tapering layers which reduce the dimensionality of the information and bring it down to 4 in the last layer. It used categorical cross-entropy as the loss function and the adam optimizer. Some unrelated columns in the data have been dropped.

A pretrained version of the Model is being used in the project which had a training accuracy of around 83 percent. Incase the model isn't functioning properly (due to any versioning issues) we've provided the python note book to generate the model, and then use it in the webapp.

# Details about the App

The webapp is designed using the flask API. It runs on the host computer at port 3000.