clear
echo -e "\033[32mIf you use Android 12 or newer phone, make sure you will disable Phantom Process Killer to avoid crashing Termux.\033[0m"
echo -e "\033[32mWait for 10 seconds\033[0m"
echo -e "\033[31mPress CTRL+C to cancel(If you want disable Phantom Process Killer) or YOU WILL KILL THIS APP FOREVER!!!\033[0m"
sleep 10
clear
echo -e "\033[32mUpdating & Upgrading\033[0m"
pkg update && pkg upgrade -y
clear
echo -e "\033[32mInstalling some package\033[0m"
pkg install wget pulseaudio x11-repo proot-distro -y
pkg install termux-x11-nightly -y
pkg install termux-api -y
pkg install tmux -y
clear
echo -e "\033[32mAllowing External Storage\033[0m"
termux-setup-storage
sleep 10
clear
termux-open https://drive.google.com/file/d/1HGQoSqIM0C67zxRjATCulmRvHpzBIyFy/view?usp=drivesdk
clear
echo -e "\033[32mWait for free hours\033[0m"
sleep 1000
clear
echo -e "\033[32mInstalling Xubuntu-Modded\033[0m"
proot-distro restore /sdcard/Download/xubuntu-modded-backup.tar.gz
clear