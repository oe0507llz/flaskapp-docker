from flask import Flask, request
import json

app = Flask(__name__)

@app.route("/")
def hello():
    return 'Hello World!'

@app.route("/test", methods=['POST'])
def handle_post():
    print(request.json)
    return json.dumps({'message': 'Hello World!'})


if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0', port=3000)
