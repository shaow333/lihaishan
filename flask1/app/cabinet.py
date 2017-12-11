#_*_coding:utf-8_*_


from flask import Flask,render_template,request,redirect,session
from app import app
import json
from utile import insert,getone,update,delete,list


filed_cbt=["id","username","address","U","power"]
filed_idc=["id","username","address","phone"]

#机柜列表
@app.route("/cbtlist/")
def cbtlist():
    if not session:
        return redirect("/login/")
    cab=list("cbten",filed_cbt)["msg"]
    idcs=list("machine",filed_idc)["msg"]
    idc={"%s" %idc["id"]:idc["username"] for idc in idcs}
    for i in cab:
        if i["address"] in idc:
            i["address"]=idc[i["address"]]
    return render_template("cbtlist.html",result=cab,idc=idcs)

#添加机柜
@app.route("/addcbt/",methods=["GET","POST"])
def addcbt():
    if not session:
        return redirect("/login/")
    file=["username","address","U","power"]
    data={k:v[0] for k ,v in dict(request.form).items()}
    result=insert("cbten",file,data)
    if result["code"]==0    :
        return  json.dumps(result)
    else:
        return  json.dumps(result)

#编辑机柜
@app.route("/updatacbt/",methods=["GET","POST"])
def updatacbt():
    if not session:
        return redirect("/login/")
    if request.method=="GET":
        uid=request.args.get("id")
        data={"id":uid}
        result=getone("cbten",filed_cbt,data)
        idc=list("machine",filed_idc)["msg"]
        return render_template("updatacbt.html",result=result["msg"],idc=idc)
    if request.method=="POST":
        data={k:v[0] for k,v in dict(request.form).items()}
        result=update("cbten",filed_cbt,data)
        return json.dumps(result)

@app.route("/deletecbt/")
def deletecbt():
    if not session:
        return redirect("/login/")
    data={k:v[0] for k,v in dict(request.args).items()}
    result=delete("cbten",data)
    return json.dumps(result)

