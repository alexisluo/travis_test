from flask import Flask
import socket

app = Flask(__name__)

@app.route('/')
def hello_world():
    hostname = socket.gethostname()
    ip = socket.gethostbyname(hostname)
    return 'Hello, Aliyun CodePipeline!'
if __name__ == '__main__':
    app.run(debug=True,host='0.0.0.0')