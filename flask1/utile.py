#_*_coding:utf-8_*_

import pymysql as mysql #导入数据库模块
from flask import Flask,request,render_template,redirect  #导入flask基础模块
import config  #数据库配置
import loginfo
import traceback

conn=mysql.connect(config.host,config.user,config.password,config.db,charset="utf8")
conn.autocommit(True)
cur=conn.cursor()#游标


def insert(table,file,data):
    sql="insert into %s(%s) values (%s)" %(table,",".join(file),",".join(["'%s'" % data[x] for x in file]))
    try:
        res=cur.execute(sql)
        loginfo.WriteLog("sql").info("insert:%s" % sql)
        result={"code":0 ,"msg":"insert ok"}
    except:
        result={'code':1,'msg':'insert fail'}
        loginfo.WriteLog("db","/tmp/error.log").error("Except:%s error:%s"%(sql,traceback.format_exc()))
    return result


def getone(table,file,data):
    if data.has_key("username"):
        sql="select * from %s where username='%s'; "%(table,data["username"])
    else:
        sql="select * from %s where id= %s" %(table,data["id"])
    try:
        cur.execute(sql)
        res=cur.fetchone()
        loginfo.WriteLog("sql").info("getone:%s" % sql)
        user={v:res[k] for k,v in enumerate(file)} #调取数据库的数据 {'username': u'lhs', 'status': None, 'passwd': u'123', 'age': 1, 'id': 53, 'phone': u'12312', 'role': 0, 'sex': u'\u7537', 'email': u'haishan0181@sina.com'}
        result={"code":0,"msg":user}
    except:
        result={"code":1,"errmsg":"slelet fail"}
        loginfo.WriteLog('db',"/tmp/error.log").error("Except:%s error:%s"%(sql,traceback.format_exc()))
    return result

def list(table,file):
    sql="select * from %s"%(table)
    try:
        cur.execute(sql)
        res=cur.fetchall()
        loginfo.WriteLog("sql").info("list:%s" % sql)
        user=[{v:row[k]for k,v in enumerate(file)} for row in res] #调取数据库的数据   列表套字典[{k:v},{k1:v1]
        result={"code":0,"msg":user}
    except:
        result={"code":1,"msg":"data is null"}
        loginfo.WriteLog('db',"/tmp/error.log").error("Except:%s error:%s"%(sql,traceback.format_exc()))
    return result


def update(table,file,data):
    condition=["%s='%s'" %(k,data[k]) for k in data] #获取客户信息  data为字典格式
    sql="update %s set %s where id=%s" %(table,",".join(condition),data['id']) #",".join(condition)为元组格式
    try:
        res=cur.execute(sql)
        loginfo.WriteLog("sql").info("update:%s" % sql)
        result={"code":0,"msg":"updata  ok"}
    except:
        result={"code":1,"msg":"updata fail"}
        loginfo.WriteLog('db',"/tmp/error.log").error("Except:%s error:%s"%(sql,traceback.format_exc()))
    return result


def delete(table,data):
    tag=False
    sql="delete from %s where id=%s"  %(table,data["id"])
    try:
        res=cur.execute(sql)
        conn.commit()
        loginfo.WriteLog("sql").info("delete:%s" % sql)
        result = {'code':0,'msg':'delete ok'}
    except:
        result = {'code':1,'errmsg':'delet fail'}
        loginfo.WriteLog('db',"/tmp/error.log").error("Except:%s error:%s"%(sql,traceback.format_exc()))
    return  result

def check(table,file,data):
     sql="select *from %s where id='%s'" %(table,data["id"])
     try:
         loginfo.WriteLog("sql").info("check:%s" % sql)
         cur.execute(sql)
         res=cur.fetchone()
         user={v:res[k] for k,v in enumerate(file)}
         print user["passwd"]
         passwd = request.form.get('passwd')
         if user["passwd"]==passwd:
             result={"code":0,"msg":"yes"}
     except:
        result={"code":1,"errmsg":"updata fail"}
        loginfo.WriteLog('db',"/tmp/error.log").error("Except:%s error:%s"%(sql,traceback.format_exc()))
     return result



def log(table,file):
    sql="select status As name,count(1) As value from %s group by status asc order by COUNT(1) DESC"%(table)
    try:
        cur.execute(sql)
        res=cur.fetchall()
        file=["name","value"]
        data=[dict((v,row[k]) for k,v in enumerate(file)) for row in res]
        loginfo.WriteLog("sql").info("delete:%s" % sql)
        result={"code":0,"data":data}
    except:
        result={"code":1,"msg":"data is null"}
        loginfo.WriteLog('db',"/tmp/error.log").error("Except:%s error:%s"%(sql,traceback.format_exc()))
    return result


def maps(table):
    sql = "select name,value from %s " %(table)
    try:
        cur.execute(sql)
        res=cur.fetchall()
        field=["name","value"]
        data = [dict((k,row[i]) for i, k in enumerate(field)) for row in res]
        loginfo.WriteLog("sql").info("delete:%s" % sql)
        result= {"code":0,"mapdata":data}
    except:
        result ={"code":1,"msg":"SQL Error"}
        loginfo.WriteLog('db',"/tmp/error.log").error("Except:%s error:%s"%(sql,traceback.format_exc()))
    return result

