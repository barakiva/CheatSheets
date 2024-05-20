function connections(){
  nmcli connection show
}

function cshow(){
  nmcli connection show $1
}


sudo ls /etc/NetworkManager/system-connections/
sudo cat /etc/NetworkManager/system-connections/<connection-profile>
sudo systemctl restart NetworkManager
systemd-resolve --status
ip route


function netm() {
  sudo netplan generate
  sudo netplan apply
}

function findmac() {
  ping -c i $1
  arp -n $1
}