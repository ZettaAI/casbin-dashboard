# optionally install cloud sql proxy
# when database server isn't accessible in
# private network but has a public IP
wget https://dl.google.com/cloudsql/cloud_sql_proxy.linux.amd64 -O cloud_sql_proxy
chmod +x cloud_sql_proxy
mv cloud_sql_proxy /bin