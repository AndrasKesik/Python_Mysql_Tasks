# -*- coding: UTF-8 -*-
import pymysql
CREATE_DB = r"C:\Workspace\Python\Week7\mysql_task\create.sql"
INSERT_DATA = r"C:\Workspace\Python\Week7\mysql_task\insert.sql"
MODIFY_DATA = r"C:\Workspace\Python\Week7\mysql_task\modify.sql"
REMOVE_DATA = r"C:\Workspace\Python\Week7\mysql_task\remove.sql"
APPEND = r"C:\Workspace\Python\Week7\mysql_task\append.sql"

def run_sql_script(sql_file):
    with open(sql_file, 'r') as f:
        sql_data = f.read()
    actual = ""
    for i in sql_data.split('\n'):
        if not i.startswith("--"):
            actual += i
            if i.endswith(";"):
                cursor.execute(actual)
                actual = ""
    connection.commit()

def task_queries():
    pass
    """
     with open(r"C:\Workspace\Python\Week7\mysql_task\task_queries.sql", 'r') as f:
        sql_data = f.read()
        actual = ""
        for i in sql_data.split('\n'):
            if not i.startswith("--"):
                actual += i
                if i.endswith(";"):
                    cursor.execute(actual)
                    data = cursor.fetchall()
                    for row in data:
                        print(row)
                    actual = ""
    """
connection = pymysql.connect(user="root", password="r2e7d", host="127.0.0.1", port=3306, database="mysql")
cursor = connection.cursor()

run_sql_script(CREATE_DB)
run_sql_script(INSERT_DATA)
#run_sql_script(MODIFY_DATA)
#run_sql_script(REMOVE_DATA)
#run_sql_script(APPEND)

print("\n\t-- ALL MEETUPS FOR A PARTICULAR USER --\n")
cursor.execute("SELECT \
	            meetupregistrations.userid,\
	            meetups.location,\
            	meetups.start,\
            	meetups.topic \
                FROM meetupregistrations JOIN meetups ON meetupregistrations.meetupid = meetups.id \
                WHERE meetupregistrations.UserId = 2;")
data = cursor.fetchall()
for i in data:
    print(i)

print("\n\t-- MEETUPS AFTER A SPECIFIC DATE --\n")
cursor.execute("SELECT * FROM meetups \
                WHERE meetups.Start > '2015-11-27 00:00:00';")
data = cursor.fetchall()
for i in data:
    print(i)

print("\n\t-- ALL USERS WITH INTRODUCTION --\n")
cursor.execute("SELECT * FROM users \
                WHERE introduction IS NOT NULL;	")
data = cursor.fetchall()
for i in data:
    print(i)

#task_queries()

connection.close()


