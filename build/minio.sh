source /etc/environment

cd /root/
wget https://dl.min.io/server/minio/release/linux-amd64/minio > /dev/null 2>&1
chmod +x minio
mv minio /usr/local/bin/
wget https://dl.min.io/client/mc/release/linux-amd64/mc > /dev/null 2>&1
chmod +x mc
mv mc /usr/local/bin/

mkdir -p /var/log/fsulib
minio server /data >> /var/log/fsulib/ldbase_minio.log &
mkdir /root/.mc; cp /ldbase_deployment/assets/mc.config.json /root/.mc/config.json
mc mb "localhost/${S3_BUCKET_NAME}"
mc policy set public "localhost/${S3_BUCKET_NAME}"
