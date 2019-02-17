Vagrant.configure(2) do |config|  
  config.vm.define "dhcp2" do |dhcp2|
    dhcp2.vm.box = "ubuntu/xenial64"
    dhcp2.vm.hostname = "dhcp1"
    dhcp2.vm.provision "shell", path: "script.sh"
  end
end
