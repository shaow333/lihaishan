#_*_ coding:utf-8 _*_

from flask import Flask,render_template,redirect,session,request
from utile import insert,getone,update,delete,list
import json
from app import app
from datetime import datetime
from commands import ansiblecommand


server_fields=["id","hostname"]


@app.route("/ansible/",methods=["POST","GET"])
def ansible():
    if not session:
        return redirect("/login/")
    if request.method=="GET":
        server=list("server",server_fields)
        return render_template("ansible.html",server=server["msg"])

    if request.method=="POST":
        cmdmsg={k:v[0] for k,v in dict(request.form).items()}
        cmd_time=datetime.now().strftime("Y-%m-%d %H:%M:%S")
        cmd_history="Time:%s  User:%s Host:%s Cmd:%s /n" %(cmd_time,session["username"],cmdmsg['pattern'],cmdmsg['cmd'])
        with open("C://Users//xxx//PycharmProjects//honework10//ansible.log",'a') as ansible_log:
            ansible_log.write(cmd_history)
            ansible_log.close

        ansiblecmd=ansiblecommand(cmdmsg["msg"],cmdmsg["pattern"])
        pattern=cmdmsg["pattern"]
        result=ansiblecmd["contacter"][pattern]["stdout"]
        if result:
            ansible_cmd="host:%s | CMD :%s | success>>  \n" %(cmdmsg["pattern"],cmdmsg["cmd"])
            anssble_msg=ansible_cmd+result
            result=anssble_msg.replace('\n','<br>')
            return json.dumps(result)



#ansbile 历史记录

@app.route("/history/",methods=["POST","GET"])
def history():
    if not session:
        return redirect("/login/")
    if request.method=='GET':
        ansible_history=""
        with file("C://Users//xxx//PycharmProjects//honework10//ansible.log")  as f:
             for line in reversed(f.readlines()):
                 ansible_history+=line+"</br>"
        f.close
    return json.dumps(ansible_history)