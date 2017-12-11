#_*_coding:utf-8_*_


from flask import Flask,render_template,request,redirect,session
from app import app
import json
from utile import log


@app.route("/log/",methods=["GET","POST"])
def logs():
    if not session:
        return redirect("/login")
    if request.method=="GET":
        return render_template("log.html")


@app.route("/status/",methods=["GET","POST"])
def status():
    if not session:
        return redirect("/login/")
    if request.method=="GET":
        file=['米','酒','面','玉米','肉']
        result=log("log",file)
        return json.dumps(result)