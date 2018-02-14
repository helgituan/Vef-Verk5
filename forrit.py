from bottle import *
import requests
import os

response = requests.get('http://apis.is/concerts')

data =  response.json()

print(data['results'][0]['eventHallName'])

@route('/')
def index():
    return template('skil5',data=data)

@route('/static/<filename>')
def static_server(filename):
    return static_file(filename,root=('./static_files'))


run(host="0.0.0.0", port=os.environ.get('PORT'))
