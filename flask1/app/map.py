#_*_coding:utf-8_*_


from flask import Flask,render_template,request,redirect,session
from app import app
import json
from utile import maps

@app.route("/map/",methods=["GET","POST"])
def map():
    if not session:
        return redirect("/login/")
    if request.method=="GET":
        return render_template("map.html")


@app.route('/mapdata/',methods=['GET', 'POST'])
def  mapdata():
    if 'username' not in  session:
        return redirect('/login/')
    if request.method=='GET':
        result = maps('map')
        print result
        return json.dumps(result)