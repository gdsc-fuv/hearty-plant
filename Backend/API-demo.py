from flask import Flask, request, jsonify
from flask_sqlalchemy import SQLAlchemy
from sqlalchemy import create_engine
import pandas as pd
import os

Server = "DESKTOP-FAT73BL\SQLEXPRESS" #Sever name
Database = "SQLSample_data" #Database name
Driver = "ODBC Driver 17 for SQL Server" #SQL driver (check by using OBDC data source app)
Database_Con = f"mssql://@{Server}/{Database}?driver={Driver}"
engine = create_engine(Database_Con)
con = engine.connect()
device_dt = pd.read_sql_query("SELECT * FROM [dbo].[DEVICE]", con) #Use panda to read and get data from Query
sensor_dt = pd.read_sql_query("SELECT * FROM [dbo].[SENSOR]", con)
device_DATA_dt = pd.read_sql_query("SELECT * FROM [dbo].[DEVICE_DATA]", con)
sensor_DATA_dt = pd.read_sql_query("SELECT * FROM [dbo].[SENSOR_DATA]", con)

#initialize app
app = Flask(__name__)

#Get sensor 
@app.route("/v1/getrealtimesensor", methods = ["GET"])
def get_realtime_sensor():
    #Convert the sql format into dictionary and the jsonify it.
    return jsonify({"sensor_list": sensor_dt.to_dict(orient= "records")})

#Get device
@app.route("/v1/getrealtimedevice", methods = ["GET"])
def get_realtime_device():
    return jsonify({"device_list": device_dt.to_dict(orient= "records")})

# Get time api, still not working. Need further revision
#@app.route("/v1/gettime", methods = ["GET"])
#def get_dkfe():
#    dt = pd.read_sql_query("SELECT timeStamp from [dbo].[DEVICE_DATA]", con)
#    return jsonify({"time":dt.to_dict("records")})


#Run sever
if __name__ =="__main__":
    app.run(debug = True)