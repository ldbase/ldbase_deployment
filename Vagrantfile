Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/bionic64"
  config.vm.provision :shell, 
  path: "build/vagrant.sh",
  keep_color: true
  config.vm.synced_folder ".", "/vagrant", :mount_options => ["dmode=777","fmode=666"]
  config.vm.network :forwarded_port, host: 9999, guest: 80
  config.vm.network :forwarded_port, host: 9000, guest: 9000
  config.vbguest.auto_update = false
  config.vm.define 'ldbase_vagrant' do |t|
    config.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--memory", 4096]
    end
  end
  config.trigger.after :up do |trigger|
    trigger.name = "Restart MinIO"
    trigger.info = "Restarting MinIO server"
    trigger.run_remote = {inline: "minio server /data >> /root/minio.log &; mc admin service restart localhost/ldbase >> /root/minio.log &"}
  end
end
