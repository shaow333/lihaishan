#__*__coding:utf-8__*__


from flask import Flask,render_template,redirect,session,request
import json
from utile import insert,getone,update,delete,list
from app import app


filed_idc=["id","username","address","phone"]

#机房列表
@app.route("/idclist/")
def idclist():
    if not session:
        return redirect("/login/")
    result=list("machine",filed_idc)
    if result["code"]==0:
        result=result["msg"]
    return render_template("idc.html",result=result)



#添加机房
@app.route("/addidc/",methods=["GET","POST"])
def addidc():
    if not session:
        return redirect("/login/")
    file=["username","address","phone"]
    data={k:v[0] for k,v in dict(request.form).items()}
    if data["username"]:
        result=insert("machine",file,data)
        return json.dumps(result)
    else:
        result={'code':1,'errmsg':'username or password is not null'}
        return  json.dumps(result)

#编辑机房信息
@app.route("/updataidc/",methods=["GET","POST"])
def updataidc():
    if not session:
        return redirect("/login/")
    if request.method=="GET":
        uid=request.args.get("id","")
        data={"id":uid}
        result=getone("machine",filed_idc,data)
        return render_template("updataidc.html",idc=result["msg"])
    if request.method=="POST":
        data={k: v[0] for k,v in dict(request.form).items()}
        result=update("machine",filed_idc,data)
        return json.dumps(result)


#删除机房信息
@app.route("/deleteidc/")
def deleteidc():
    data={k:v[0] for k,v in dict(request.args).items()}
    result=delete("machine",data)
    return json.dumps(result)


