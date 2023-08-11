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