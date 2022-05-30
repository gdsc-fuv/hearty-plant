from cmath import log
import json
from flask import Flask, request, jsonify
from flask_sqlalchemy import SQLAlchemy
from numpy import record
from sqlalchemy import create_engine
import pandas as pd
import os

Server = "DESKTOP-JBJPAF9\SQLEXPRESS"#Sever name
Database = "HEARTY_PLANT" #Database name
Driver = "ODBC Driver 17 for SQL Server" #SQL driver (check by using OBDC data source app)
Database_Con = f"mssql://@{Server}/{Database}?driver={Driver}"
engine = create_engine(Database_Con)
con = engine.connect()
#Use panda to read and get data from Query

#initialize app
app = Flask(__name__)

#Get sensor 
@app.route("/v1/getrealtimesensor", methods = ["GET"])
def get_realtime_sensor():
    #Convert the sql format into dictionary and the jsonify it.
    sensor_dt = pd.read_sql_query("SELECT * FROM [dbo].[SENSOR]", con)
    return jsonify({"sensor_list": sensor_dt.to_dict(orient= "records")})


#Get device
@app.route("/v1/getrealtimedevice", methods = ["GET"])
def get_realtime_device():
    device_dt = pd.read_sql_query("SELECT * FROM [dbo].[DEVICE]", con)
    return jsonify({"device_list": device_dt.to_dict(orient= "records")})

#Get data from each date
@app.route ("/v1/getdatalist", methods = ["GET"])
def get_datalist():
    args = request.args
    sensorid = args.get('sensorid')
    duration = args.get('duration')
    sensor = pd.read_sql_query("SELECT sensorName FROM [dbo].[SENSOR] WHERE sensorID = %s" %(sensorid), con)

    if sensor.empty:
        return jsonify("Invalid sensor id. The sensor you're looking for doesn't exist")
    else:
        data = pd.read_sql_query("SELECT timeStamp, data FROM [dbo].[SENSOR_DATA] WHERE sensorID = %s AND timeStamp > DATEADD (day, -%s, Getdate())" %(sensorid, duration), con)
        print(sensor)
        return jsonify({ "sensor_name": sensor.sensorName[0], "duration": duration , "data" :data.to_dict(orient= "records")})

#Set the device status
@app.route ("/v1/setdevice", methods = ["PUT"])
def put_device_status():
    args = request.args
    deviceid = args.get('deviceid')
    status = args.get('status')
    con.execute("UPDATE [dbo].[DEVICE] SET status = %s WHERE id = %s" %(status, deviceid))
    check_status = pd.read_sql_query("SELECT status FROM [dbo].[DEVICE] WHERE id = %s" %(deviceid), con)
    return jsonify(check_status.to_dict(orient = 'records'))

#Set the sensor status
@app.route ("/v1/setsensor", methods = ["PUT"])
def put_sensor_status():
    args = request.args
    sensorid = args.get('sensorid')
    status = args.get('status')
    con.execute("UPDATE [dbo].[SENSOR] SET status = %s WHERE id = %s" %(status, sensorid))
    check_status = pd.read_sql_query("SELECT status FROM [dbo].[SENSOR] WHERE id = %s" %(sensorid), con)
    return jsonify(check_status.to_dict(orient = 'records'))

#Run sever
if __name__ =="__main__":
    app.run(debug = True)