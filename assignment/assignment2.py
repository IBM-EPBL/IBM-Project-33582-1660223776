import ibm_db

hostname="21fecfd8-47b7-4937-840d-d791d0218660.bs2io90l08kqb1od8lcg.databases.appdomain.cloud"
uid="dck66821"
pwd="NswFBRLA1miAkMR7"
driver="{IBM DB2 ODBC DRIVER}"
db="bludb"
port="31864"
protocol="TCPIP"
cert="certificate.crt"
dsn=(
    "DRIVER = {0};"
    "DATABASE={1};"
    "HOSTNAME={2};"
    "PORT={3};"
    "UID={4};"
    "SECURITY=SSL;"
    "SSLServercertificate={5};"
    "PWD={6};"
).format(db,hostname,port,uid,cert,pwd,driver,protocol)
print(dsn)
try:
    db2=ibm_db.connect(dsn,"","")
    print("connectd to database")
except:
    print("unable to connect",ibm_db.conn_errormsg())
