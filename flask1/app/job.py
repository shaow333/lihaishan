#_*_coding:utf-8_*_


from flask import Flask,render_template,request,redirect,session
from app import app
import json
import datetime
from utile import insert,getone,update,delete,list




# Date 数据处理
class DatetimeEncoder(json.JSONEncoder):
    def default(self, obj):
        if isinstance(obj, datetime.datetime):
            return obj.strftime('%Y-%m-%d %H:%M:%S')
        elif isinstance(obj,date):
            return obj.strftime('%Y-%m-%d')
        else:
            return json.JSONEncoder.default(self, obj)


#工单申请界面
@app.route("/jobadd/",methods=["GET","POST"])
def jobadd():
    if not session:
        return redirect("/login/")
    if request.method=="GET":
        return render_template("jobapplication.html")
    if request.method=="POST":
        data={k:v[0] for k,v in dict(request.form).items()}
        data["apply_name"]=session["username"]
        filed=['apply_name',"apply_type",'apply_desc']
        result=insert("job",filed,data)
        if result["code"]==0:
            return json.dumps(result)



#工单列表
@app.route("/joblist/",methods=["GET","POST"])
def joblist():
    if not session:
        return redirect("/login/")
    file = ['id','apply_name','handle_name','apply_type','apply_desc','handle_desc','status','created','modified']
    jobs=[]
    result=list("job",file)
    if result["code"]==0:
        result=result["msg"]
        for x in result:
            if x["status"]<2:
                jobs.append(x)
    return render_template("joblist.html",result=jobs)



#工单更新
@app.route("/jobupdata/",methods=["GET","POST"])
def jobupdata():
    if not session:
        return redirect("/login")
    if request.method=="GET":
        file = ['id','handle_name','status']
        job={k:v[0] for k,v in dict(request.args).items()}
        job["handle_name"]=session["username"]
        job["status"]=1
        result=update("job",file,job)
        if result["code"]==0:
             result ={'code':0, 'msg':"Job Update  success"}
             return  json.dumps(result)

    if request.method=="POST":
        filed=["id",'handle_desc','status']
        job={k:v[0] for k,v in dict(request.form).items()}
        job["status"]=2
        result=update("job",filed,job)
        if result["code"]==0:
            return  json.dumps(result)


#详情
@app.route("/jobdetail/")
def jobdetail():
    if not session:
        return redirect("/login/")
    job={k:v[0] for k,v in dict(request.args).items()}
    file_job = ['id','apply_name','apply_desc','apply_desc','apply_desc','handle_desc','created','created']
    result=getone("job",file_job,job)
    return json.dumps(result,cls=DatetimeEncoder)

#历史工单
@app.route("/historylist/")
def historylist():
    if not session:
        return redirect("/login")
    filed = ['id','apply_name','handle_name','apply_type','apply_desc','handle_desc','status','created','modified']
    result=list("job",filed)
    if result["code"]==0:
        result=result["msg"]
    return  render_template("historylist.html",result=result)
