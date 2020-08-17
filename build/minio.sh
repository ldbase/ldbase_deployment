echo "Downloading MinIO server & client..." >> /root/minio.txt 2>&1
echo "Downloading MinIO server & client..."
cd /root/ >/dev/null
wget https://dl.min.io/server/minio/release/linux-amd64/minio >/dev/null
chmod +x minio >/dev/null
mv minio /usr/local/bin/  >/dev/null
wget https://dl.min.io/client/mc/release/linux-amd64/mc >/dev/null
chmod +x mc >/dev/null
mv mc /usr/local/bin/ >/dev/null
echo "Done downloading MinIO server & client." >> /root/minio.txt 2>&1

echo "\n\nStarting  MinIO server and provisioning LDbase bucket..." >> /root/minio.txt 2>&1
echo "Starting  MinIO server and provisioning LDbase bucket..."
minio server /data >> minio.txt & >/dev/null
mkdir /root/.mc; cp /vagrant/assets/mc.config.json /root/.mc/config.json >/dev/null
mc mb localhost/ldbase >> minio.txt >/dev/null
mc policy set public localhost/ldbase >> minio.txt
echo "Done starting MinIO server and provisioning LDbase bucket." >> /root/minio.txt 2>&1
