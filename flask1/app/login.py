#! /usr/bin/env python
# __*__coding:utf-8__*__

from flask import Flask,render_template,request,redirect,session
from utile import insert,getone,update,delete,list
import json
from app import app

filed=["id","username","passwd","phone","email","age","sex","role","status"]



#用户登录
@app.route("/login/",methods=["GET","POST"])
def login():
    if request.method=="POST":
        data={k:v[0]for k,v in dict(request.form).items()}
        print data
        result=getone("mylist",filed,data)
        print result
        if result["code"]==0:
            if result["msg"]["passwd"]==data["passwd"]:
                session["username"]=data["username"]
                session["role"]=result["msg"]["role"]
                return json.dumps(result)
            else:
                result={"code":1,"errmsg":"密码不正确"}
        else:
            result={"code":1,"errmsg":"用户名或密码不正确"}
            return json.dumps(result)
    return render_template("login.html")


@app.route("/logout/")
def logout():
    if session:
        session.clear
    return redirect("/login/")
