#sudo apt install ntfs-3g
sudo fdisk -l
mkdir ~/windows_mount
sudo mount -t ntfs-3g -o rw /dev/nvme0n1p4 ~/windows_mount
cd ~/windows_mount/Windows/System32/config
chntpw -e SYSTEM
# In the chntpw prompt, type the following:
cd ControlSet001\Services\BTHPORT\Parameters\Keys
# <e848b8c82000> = e848b8c82000 = key
cd key
ls
hex key

function fixBT() {
  #sudo apt install ntfs-3g
  mkdir ~/windows_mount
  sudo fdisk -l
  sudo mount -t ntfs-3g -o rw /dev/nvme0n1p4 ~/windows_mount
  cd ~/windows_mount/Windows/System32/config
  chntpw -e SYSTEM
  # In the chntpw prompt, type the following:
  cd ControlSet001\Services\BTHPORT\Parameters\Keys
  # <e848b8c82000> = e848b8c82000 = key
  cd key
  ls
  hex key
}

[LinkKey]
:00000  4F:24:7D FF D9 4E 93 7D AB 4F E0 75 7B 78 E0 00 O$}..N.}.O.u{x..


sudo -i
cd /var/lib/bluetooth/00:1A:7D:DA:71:13/D4:A6:D7:59:C7:D4# 


# m575 D4:A6:D7:59:C8:0D

# intl DC:41:A9:D6:FE:7E
# cyber-blue(HK  00:1A:7D:DA:71:13  
# unknown E8:48:B8:C8:20:00
  # HUAWEI D4:A6:D7:59:C8:0D M575