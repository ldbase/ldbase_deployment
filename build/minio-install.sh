cd /root/

wget https://dl.min.io/server/minio/release/linux-amd64/minio
chmod +x minio
mv minio /usr/local/bin/ 

wget https://dl.min.io/client/mc/release/linux-amd64/mc
chmod +x mc
mv mc /usr/local/bin/

minio server /data >> minio-config.txt &
mkdir /root/.mc; cp /vagrant/assets/mc.config.json /root/.mc/config.json
mc mb localhost/ldbase >> minio-config.txt
mc policy set public localhost/ldbase >> minio-config.txt
