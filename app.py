import os
from flask import Flask

app = Flask(__name__)
app.config.from_object(os.environ['APP_SETTINGS'])

@app.route('/')
def hello_world():
    print(os.environ['APP_SETTINGS'])
    return 'Hello, World!'
