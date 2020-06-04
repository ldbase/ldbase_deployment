cd /root/
wget https://dl.min.io/server/minio/release/linux-amd64/minio
chmod +x minio
mv minio /usr/local/bin/ 
minio server /data > /dev/null 2>&1 &
