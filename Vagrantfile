Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/bionic64"
  config.vm.provision :shell, 
  path: "build/vagrant.sh",
  keep_color: true
  config.vm.synced_folder ".", "/vagrant", :mount_options => ["dmode=777","fmode=777"]
  config.vm.network :forwarded_port, host: 9999, guest: 80
  config.vm.network :forwarded_port, host: 9000, guest: 9000
  config.vbguest.auto_update = false
  config.vm.define 'ldbase_vagrant' do |t|
    config.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--memory", 4096]
    end
  end
  config.trigger.before :halt do |trigger|
    trigger.name = "Stop MinIO"
    trigger.info = "Stopping MinIO server"
    trigger.run_remote = {inline: "mc admin service stop localhost/ldbase"}
  end
  config.trigger.after :up do |trigger|
    trigger.name = "Restart MinIO"
    trigger.info = "Restarting MinIO server"
    trigger.run_remote = {inline: "minio server /data >/dev/null 2>&1 &"}
  end
end
