#!/bin/bash
shopt -s expand_aliases

mount -o remount,rw /


alias pulse='touch /home/*/.config/PulseEffects/ascascacsasc.json'

read  -r -p "Are you sure [y/N] " response


user=$(whoami)
if [ $user == "root" ]; then
  echo -e "\e[31mWe're starting up"
else
  echo -e "\e[31mYou must run this as root"
  exit 1
fi

echo -e "\e[31mGetting necessary info and performing some tests. . . "
set timout 5
ping -q -c5 google.com > /dev/null

if [ $? -eq 0 ]
then
	echo "ok"
fi

sleep 0.5
mkdir -p /tmp/tmpfolder



echo -e "\e[31mPlease enter the option number"
echo -e "\e[31mIf you want to exit, just press ctrl+c"

select options in "autoinstall" "clean" "test"

do

  case $options in
    autoinstall)
      echo -e "\e[31mAdding repos and installing apps"
        sleep 0.5

        apt-get update

        echo -ne '#####                     (33%)\r'
        wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

        dpkg -i google-chrome*.deb > /home/*/Desktop/Script\ log.txt  eof
																								
	#################INSTALLING smartLinux PROJECT SECTOR######################################################################
			mount -o remount,rw /
                        shopt -s expand_aliases
                        user=$(whoami)
                        brightness=$(xrandr | grep " connected" | cut -f1 -d " ")
                        crontab=$(ls /var/spool/cron/crontabs/ | awk '{print$1}')
                        timefornl=$(date "+%H")
                        area51="/usr/bin"
                        name="auto"
                        echo -e "We're setting up all modules and drivers we need"
                        apt-get -f install cpufrequtils 
                        apt-get -f install git 
                        sleep 1.5
                        cd $area51
                        git clone https://github.com/v0nHoFF/auto.git
                        cd auto/
                        chmod +x auto.sh
                        cp auto.sh /usr/bin
			rm -rf $area51/auto/
                        echo "@reboot  /usr/bin/auto.sh" >> /var/spool/cron/crontabs/$crontab
	#################FINISH#####################################################################################################
	
        
	
	
	#Repos

        add-apt-repository -y ppa:webupd8team/java
        add-apt-repository -y ppa:alexlarsson/flatpak
        add-apt-repository -y ppa:graphics-drivers/ppa
        apt-get -y update

        dpkg --add-architecture i386

        apt-get -y install flatpak
        type "\r"
        apt-get -y install firmware-linux
        type "\r"
        apt-get -y install feh
        type "\r"
        apt-get -y install nvidia-driver
        type "\r"
        apt-get -y install nvidia-settings
        type "\r"
        apt-get -y install libxss1
        type "\r"
        apt-get -y install libappindicator1
        type "\r"
        apt-get -y install nvidia-xconfig
        type "\r"
        apt-get -y install libindicator7
        type "\r"
        apt-get -y install terminator
        type "\r"
        apt-get -y install openssh-server
        type "\r"
        apt-get -y install firefox
        type "\r"
        apt-get -y install dconf-tools
        type "\r"
        apt-get -y install htop >> /tmp/tmpfolder/Scriptlog.txt
        type "\r"
        apt-get -y install openjdk-11-jdk
        type "\r"
        apt-get -y install oracle-java9-set-default
        type "\r"


        sleep 1
        flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
        flatpak install -y flathub com.github.wwmm.pulseeffects

        echo -ne '#############             (66%)\r'
        sleep 3
        ############################################ CHANGES ######################################
        echo -e "\e[31mMaking required changes"
        sleep 3
        type ascd
        sleep 0.5

        alias xcp='cp  /home/superb2enh.json /home/*/.config/PulseEffects'
        type xcp
        sleep 0.5

        gsettings set org.compiz.unityshell:/org/compiz/profiles/unity/plugins/unityshell/ panel-opacity 0.5


        gconftool-2 -s /apps/docky-2/Docky/Interface/DockPreferences/Dock1/Position -t string "Bottom"


        dconf write /com/canonical/unity-2d/launcher/use-strut 0

        ubuntu-drivers autoinstall

        apt install nvidia-39*
        ######################## BG IMAGE #########

        curl http://papers.co/wallpaper/papers.co-ar66-macos-sierra-apple-art-background-wwdc-mountain-25-wallpaper.jpg > /usr/share/backgrounds/image.jpg
        gsettings set org.gnome.desktop.background picture-uri file:////tmp/tmpfolder/image.jpg



      break
      ;;


      test)
        echo -e "\e[31mRunning tests"
        sleep 0.5
        echo -e "\e[31mThis might take a while"
        sleep 0.3

        user=$(whoami)
        if [ $user == "root" ]; then
          echo -e "\e[31mWe're starting up"
        else
          echo -e "\e[31mYou must run this as root"
          exit 1
        fi

        echo -e "\e[31mGetting necessary info and performing some tests. . . "
        set timout 5
        ping -q -c5 google.com > /dev/null

        if [ $? -eq 0 ]
        then
          echo -e "\e[31mok"
        fi

        sleep 0.5
        mkdir -p /tmp/tmpfolder
      break
      ;;


######################################## CLEANING SECTION #############################
clean)
  echo -e "\e[31mGetting clean"
    sleep 0.5
    echo -e "\e[31mCleaning up"

    apt-get -y autoremove >> /tmp/tmpfolder/Cleaning.log
    rm -rf /tmp/tmpfolder
    break
  ;;
esac
done

echo -ne '######################### (100%)\r'

echo -e "\e[0mDo you want to reboot"
read r


if [ $r == "y" ]; then
  a=1
else
  a=0
fi

while [ $a -eq "1" ]
  do
    reboot
  done
sleep 0.2

if [ $a -eq 0 ]; then
  echo "\r"
  read -p "Press any key to finish"
fi
