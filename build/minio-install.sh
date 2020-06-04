cd /root/

wget https://dl.min.io/server/minio/release/linux-amd64/minio
chmod +x minio
mv minio /usr/local/bin/ 

wget https://dl.min.io/client/mc/release/linux-amd64/mc
chmod +x mc
mv mc /usr/local/bin/

minio server /data > /dev/null 2>&1 &
mc config host add localhost http://localhost:9000 minioadmin minioadmin
mkdir /data/ldbase
mc policy set public localhost/ldbase
