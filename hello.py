from flask import Flask,render_template

app = Flask(__name__)


@app.route('/')
def hello():
    return 'Hello,Yogesh!'

@app.route('/yk')
def ren():
    return render_template('index.html')