#_*_coding:utf-8_*_


from flask import Flask,render_template,request,redirect,session
from app import app
import json
from utile import insert,getone,update,delete,list

fileds_server = ['id','hostname', 'ip', 'mac', 'username', 'password', 'port', 'idc', 'brand', 'cpu', 'memory', 'disk', 'system_type', 'number',"cabinet"]
filed_idc=["id","username"]
cabinet_fields=['id','username']


#服务器列表
@app.route("/serverlist/")
def serverlist():
    if not session:
        return  redirect("/login/")
    idcs=list("machine",filed_idc)
    cabinets=list("cbten",cabinet_fields)
    servers=list("server",fileds_server)
    for cab in servers["msg"]:
        for items in cabinets['msg']:
            if cab["cabinet"]==items["id"]:
                cab["cabinet"]=items["username"]
            for cac in idcs["msg"]:
                if cab["idc"]==cac["id"]:
                    cab["idc"]=cac["username"]
    return render_template("serverlist.html",result=servers["msg"])


#添加服务器
@app.route("/addserver/",methods=["POST","GET"])
def addserver():
    if request.method=="POST":
        fileds = ['hostname', 'ip', 'mac', 'username', 'password', 'port', 'idc', 'brand', 'cpu', 'memory', 'disk', 'system_type', 'number',"cabinet"]
        data={k:v[0] for k,v in dict(request.form).items()}
        result=insert("server",fileds,data)
        if result["code"]==0:
            return json.dumps(result)
    if request.method=='GET':
        idc   =  list('machine',filed_idc)
        cabinet   =  list('cbten',cabinet_fields)
        result = {'code':0,'idc':idc['msg'],'cabinet':cabinet['msg']}
        return  json.dumps(result)

#编辑服务器
@app.route("/updataserver/",methods=["GET","POST"])
def updataserver():
    if not session:
        return redirect("/login/")
    if request.method=="GET":
        uid=request.args.get("id")
        data={"id":uid}
        server=getone("server",fileds_server,data)
        idc  = list('machine',filed_idc)
        cabinet  = list('cbten',cabinet_fields)
        result={"code":0,"idc":idc["msg"],'cabinet':cabinet["msg"],'server':server["msg"]}
        return json.dumps(result)
    if request.method=="POST":
        data={k:v[0] for k,v in dict(request.form).items()}
        result=update("server",fileds_server,data)
        if result["code"]==0:
            return json.dumps(result)


#删除
@app.route('/deleteserver/',methods=["GET","POST"])
def deleteserverr():
    if 'username' not in  session:
        return redirect('/login/')
    data={k:v[0] for k,v in dict(request.form).items()}
    result=delete("server",data)
    return json.dumps(result)