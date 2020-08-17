echo "Downloading MinIO server & client..." >> /root/minio.txt 2>&1
cd /root/
wget https://dl.min.io/server/minio/release/linux-amd64/minio
chmod +x minio
mv minio /usr/local/bin/ 
wget https://dl.min.io/client/mc/release/linux-amd64/mc
chmod +x mc
mv mc /usr/local/bin/
echo "Done downloading MinIO server & client." >> /root/minio.txt 2>&1

echo "\n\nStarting  MinIO server and provisioning LDbase bucket..." >> /root/minio.txt 2>&1
minio server /data >> minio.txt &
mkdir /root/.mc; cp /vagrant/assets/mc.config.json /root/.mc/config.json
mc mb localhost/ldbase >> minio.txt
mc policy set public localhost/ldbase >> minio.txt
echo "Done starting MinIO server and provisioning LDbase bucket." >> /root/minio.txt 2>&1
