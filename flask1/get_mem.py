#! /usr/bin/env python
# _*_coding:utf-8_*_

import psutil
import time
import pymysql as mysql
import config
conn= mysql.connect(config.host,config.user,config.password,config.db,charset="utf8")
cur=conn.cursor()
conn.autocommit(True)






while True:

    memfree=psutil.virtual_memory().free/1024/1024

    sql='insert into mem values(%s,%s)'%(memfree,int(time.time()))
    print sql
    cur.execute(sql)
    time.sleep(1)