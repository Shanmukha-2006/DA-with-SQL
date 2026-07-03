
import mysql.connector as myconn

mydb=myconn.connect(
    host="localhost",
    user="root",
    password="r00t1234",
    database="company"
)
print(mydb,"connected")

mycursor=mydb.cursor()
mycursor.execute("show databases")

for db in mycursor:
    print(db)


#mycursor.execute("create database company")

#print("db created successfully")

mycursor.execute("create table emp (name varchar(10),age int,dept varchar(10))")

print("table created successfully")