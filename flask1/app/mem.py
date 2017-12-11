#! /usr/bin/env python
# _*_coding:utf-8_*_

from flask import Flask,render_template,request,redirect,session
import utile
import json
import psutil
#import get_mem
from app import app
import config
import time
import pymysql as mysql
conn= mysql.connect(config.host,config.user,config.password,config.db,charset="utf8")
cur=conn.cursor()
conn.autocommit(True)




@app.route("/monitor/")
def mem():
    if not session:
        return redirect("/login/")
    return render_template("mem.html",res=session)

tem_time=0
@app.route("/memdata")
def memdata():
    global tem_time
    if tem_time>0:
        sql="select * from mem where time >%s" %(tem_time/1000)
    else:
        sql="select *from mem"
    cur.execute(sql)
    date=cur.fetchall()
    result=[]
    data={}
    for i in date:
        result.append({"name":i[1],"value":[i[1],i[0]]})
    data["data"]=result
    return json.dumps(data)
