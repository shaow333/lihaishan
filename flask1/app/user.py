#_*_encoding:utf-8_*_

from flask import Flask ,render_template,redirect,session,request
import json
from utile import insert,getone,update,check
from app import app


filed=["id","username","passwd","phone","email","age","sex","role","status"]

#用户信息

@app.route("/userinfo/")
def userinfo():
    if not session:
        return  redirect("/login/")
    data={'username':session['username']}
    result=getone("mylist",filed,data)
    print result
    if result["code"]==0:
        result=result["msg"]
    #return  json.dumps(result)
    return render_template("user.html",result=result)



#编辑个人信息
@app.route("/userupdate/",methods=["GET","POST"])
def userupdate():
    if not session:
        return  redirect("/login/")
    if request.method=="POST":
        data={k:v[0] for k,v  in dict(request.form).items()}
        result=update("mylist",filed,data)
    if result["code"]==0:
        return json.dumps(result)

#修改密码
@app.route('/updata/pwd/',methods=['GET','POST'])
def updatapwd():
    if not session:
       return redirect('/login/')
    if request.method=='POST':
        data={k:v[0] for k,v in dict(request.form).items()}
        print data
        userdata={"id":data["id"]}
        #result=update("mylist",filed,userdata)
        result=check("mylist",filed,userdata)
        if result["code"]==0:
            data={"id":data["id"],"passwd":data["npassword"]}
            result=update("mylist",filed,data)
    return  json.dumps(result)