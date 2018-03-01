from bottle import run, route, template, static_file, error
import requests, os,datetime

response = requests.get('http://apis.is/petrol')

data = response.json()

@route('/')
def index():
    return template('index',data=data, datetime=datetime)

@route('/company/<route>')
def company(route):
    return template('companypage', data=data, route=route)

@route('/moreinfo/<id>')
def moreinfo(id):
    return template('moreinfo', data=data, id=id)

@route('/static/<filename>')
def server_static(filename):
    return static_file(filename, root='./myfiles')

@error(404)
def error404(error):
    return '<h1>[404] Siðan er ekki til.</h1>'

@error(500)
def error500(error):
    return '<h1>[500] Villa á miðlara</h1>'


run()
#run(host="0.0.0.0", port=int(os.environ.get("PORT", 5000)))