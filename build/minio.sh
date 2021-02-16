echo "Downloading MinIO server & client..." | tee /root/minio.log 2>&1
cd /root/ >/dev/null 2>&1
wget https://dl.min.io/server/minio/release/linux-amd64/archive/minio.RELEASE.2021-02-01T22-56-52Z >/dev/null 2>&1
mv minio.RELEASE.2021-02-01T22-56-52Z minio
chmod +x minio >/dev/null 2>&1
mv minio /usr/local/bin/  >/dev/null 2>&1
wget https://dl.min.io/client/mc/release/linux-amd64/mc >/dev/null 2>&1
chmod +x mc >/dev/null 2>&1
mv mc /usr/local/bin/ >/dev/null 2>&1
echo "Done downloading MinIO server & client." | tee /root/minio.log 2>&1

echo "\n\nStarting  MinIO server and provisioning LDbase bucket..." | tee /root/minio.log 2>&1
minio server /data >> minio.log & >/dev/null 2>&1
mkdir /root/.mc; cp /vagrant/assets/mc.config.json /root/.mc/config.json >/dev/null 2>&1
mc mb localhost/ldbase >> minio.log >/dev/null 2>&1
mc policy set public localhost/ldbase >> minio.log 2>&1
echo "Done starting MinIO server and provisioning LDbase bucket." | tee /root/minio.log 2>&1
