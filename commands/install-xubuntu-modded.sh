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
wget https://github.com/LukeYT-Xubuntu-Modded/Xubuntu-Modded/releases/download/Xubuntu-Modded-Rootfs/xubuntu-modded-backup.tar.gz
clear
echo -e "\033[32mInstalling Xubuntu-Modded\033[0m"
proot-distro restore ./xubuntu-modded-backup.tar.gz
clear
wget -P /data/data/com.termux/files/usr/bin https://github.com/LukeYT-Xubuntu-Modded/Xubuntu-Modded/raw/refs/heads/main/commands/xubuntu-modded
wget -P /data/data/com.termux/files/usr/bin https://github.com/LukeYT-Xubuntu-Modded/Xubuntu-Modded/raw/refs/heads/main/commands/xubuntu-modded-x11
wget -P /data/data/com.termux/files/usr/bin https://github.com/LukeYT-Xubuntu-Modded/Xubuntu-Modded/raw/refs/heads/main/commands/uninstall-xubuntu-modded
chmod +x /data/data/com.termux/files/usr/bin/xubuntu-modded
chmod +x /data/data/com.termux/files/usr/bin/xubuntu-modded-x11
chmod +x /data/data/com.termux/files/usr/bin/uninstall-xubuntu-modded
clear
echo -e "\e[32mDone! You're done!\e[0m"
echo -e "\e[32mYou can login to Xubuntu Modded by command: xubuntu-modded\e[0m"
echo -e "\e[31mOr you can run desktop by command: xubuntu-modded-x11\e[0m"
