#_*_ coding:utf-8 _*_

from flask import Flask,render_template,redirect,request,session
import json
from utile import insert,list,delete,getone,update

app = Flask(__name__)
app.secret_key="2134j1kjsdjfadsfl"


import user
import login
import userlist
import idc
import cabinet
import server
import job
import log
import map
import mem
import money
import ansible


