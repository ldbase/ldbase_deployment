echo "timezone.sh started." >> /root/build-process.txt

# Set timezone
rm -f /etc/localtime
ln -s /usr/share/zoneinfo/US/Eastern /etc/localtime

echo "timezone.sh completed." >> /root/build-process.txt
