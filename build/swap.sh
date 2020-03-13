echo "swap.sh started." >> /root/build-process.txt

# Set up swapfile
fallocate -l 1G /swapfile
chmod 600 /swapfile
mkswap /swapfile
echo "/swapfile swap swap defaults 0 0" >> /etc/fstab
swapon -a /swapfile

echo "swap.sh completed." >> /root/build-process.txt
