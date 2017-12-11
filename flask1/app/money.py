#_*_coding:utf-8_*_


from flask import Flask,render_template,request,redirect,session
from app import app
import json
from utile import insert,getone,update,delete,list


file=["id","username","id_number","modol","money","rate","day","Loan_Date","End_date","bank","Account_number","branch_company","Loan_number"]
filed=["username","id_number","modol","money","rate","day","Loan_Date","End_date","bank","Account_number","branch_company","Loan_number"]

@app.route("/moneylist/",methods=["GET","POST"])
def moneylist():
    if not session:
        return redirect("/login/")
    if request.method=="GET":
        result=list("money",file)
    return render_template("moneylist.html",result=result["msg"])



@app.route("/addmoney/",methods=["GET","POST"])
def addmoney():
    if not session:
        return redirect("/login/")
    if request.method=="POST":
        data={k:v[0] for k ,v in dict(request.form).items()}
        result=insert("money",filed,data)
        if result["code"]==0:
            return json.dumps(result)
        else:
            return  json.dumps(result)



@app.route("/updatamoney/",methods=["GET","POST"])
def updatamoney():
    if not session:
        return redirect("/login/")
    if request.method=="GET":
        uid=request.args.get("id","")
        data={"id":uid}
        result=getone("money",file,data)
        result=result["msg"]
        print result
        return json.dumps(result)
    if request.method=="POST":
        data={k:v[0] for k,v in dict(request.form).items()}
        result=update("money",file,data)
        return json.dumps(result)


@app.route("/deletemoney/")
def deletemoney():
    if not session:
        return redirect("/login")
    data={k:v[0] for k,v in dict(request.args).items()}
    result=delete("money",data)
    return json.dumps(result)

