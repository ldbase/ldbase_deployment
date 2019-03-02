# Update repository caches
apt update > /root/updates.txt 2>&1
apt -y upgrade > /root/upgrades.txt 2>&1
