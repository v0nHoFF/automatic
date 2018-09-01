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
        echo -e "\e[31mMaking changes to the programs that need that"
        sleep 3


        echo " {
          "spectrum": {
            "show": "true",
            "n-points": "600",
            "height": "241",
            "use-custom-color": "true",
            "color": [
            "0.30588235294117649",
            "0.60392156862745094",
            "0.023529411764705882",
            "1"
            ]
          },
          "pulseaudio": {
            "use-default-sink": "true",
            "use-default-source": "true",
            "buffer-out": "200000",
            "latency-out": "10000",
            "buffer-in": "200000",
            "latency-in": "10000"
          },
          "input": {
            "plugins_order": [
            "gate",
            "webrtc",
            "limiter",
            "compressor",
            "filter",
            "equalizer",
            "deesser",
            "reverb",
            "pitch"
            ],
            "compressor": {
              "state": "false",
              "detection": "RMS",
              "stereo-link": "Average",
              "mix": "0",
              "attack": "20",
              "release": "250",
              "threshold": "-18",
              "ratio": "2",
              "knee": "9",
              "makeup": "0"
            },
            "deesser": {
              "state": "false",
              "detection": "RMS",
              "mode": "Wide",
              "threshold": "-18",
              "ratio": "3",
              "laxity": "15",
              "makeup": "0",
              "f1-freq": "6000",
              "f2-freq": "4500",
              "f1-level": "0",
              "f2-level": "12",
              "f2-q": "1",
              "sc-listen": "false"
            },
            "equalizer": {
              "state": "false",
              "num-bands": "30",
              "band0": {
                "gain": "0",
                "frequency": "22.59",
                "width": "5.1799999999999997",
                "type": "peak"
              },
              "band1": {
                "gain": "0",
                "frequency": "28.440000000000001",
                "width": "6.5199999999999996",
                "type": "peak"
              },
              "band2": {
                "gain": "0",
                "frequency": "35.799999999999997",
                "width": "8.2100000000000009",
                "type": "peak"
              },
              "band3": {
                "gain": "0",
                "frequency": "45.07",
                "width": "10.33",
                "type": "peak"
              },
              "band4": {
                "gain": "0",
                "frequency": "56.740000000000002",
                "width": "13",
                "type": "peak"
              },
              "band5": {
                "gain": "0",
                "frequency": "71.430000000000007",
                "width": "16.379999999999999",
                "type": "peak"
              },
              "band6": {
                "gain": "0",
                "frequency": "89.930000000000007",
                "width": "20.620000000000001",
                "type": "peak"
              },
              "band7": {
                "gain": "0",
                "frequency": "113.20999999999999",
                "width": "25.949999999999999",
                "type": "peak"
              },
              "band8": {
                "gain": "0",
                "frequency": "142.53",
                "width": "32.670000000000002",
                "type": "peak"
              },
              "band9": {
                "gain": "0",
                "frequency": "179.43000000000001",
                "width": "41.130000000000003",
                "type": "peak"
              },
              "band10": {
                "gain": "0",
                "frequency": "225.88999999999999",
                "width": "51.789999999999999",
                "type": "peak"
              },
              "band11": {
                "gain": "0",
                "frequency": "284.38",
                "width": "65.189999999999998",
                "type": "peak"
              },
              "band12": {
                "gain": "0",
                "frequency": "358.01999999999998",
                "width": "82.069999999999993",
                "type": "peak"
              },
              "band13": {
                "gain": "0",
                "frequency": "450.72000000000003",
                "width": "103.33",
                "type": "peak"
              },
              "band14": {
                "gain": "0",
                "frequency": "567.41999999999996",
                "width": "130.08000000000001",
                "type": "peak"
              },
              "band15": {
                "gain": "0",
                "frequency": "714.34000000000003",
                "width": "163.75999999999999",
                "type": "peak"
              },
              "band16": {
                "gain": "0",
                "frequency": "899.28999999999996",
                "width": "206.16",
                "type": "peak"
              },
              "band17": {
                "gain": "0",
                "frequency": "1132.1500000000001",
                "width": "259.54000000000002",
                "type": "peak"
              },
              "band18": {
                "gain": "0",
                "frequency": "1425.29",
                "width": "326.74000000000001",
                "type": "peak"
              },
              "band19": {
                "gain": "0",
                "frequency": "1794.3299999999999",
                "width": "411.33999999999997",
                "type": "peak"
              },
              "band20": {
                "gain": "0",
                "frequency": "2258.9299999999998",
                "width": "517.85000000000002",
                "type": "peak"
              },
              "band21": {
                "gain": "0",
                "frequency": "2843.8200000000002",
                "width": "651.94000000000005",
                "type": "peak"
              },
              "band22": {
                "gain": "0",
                "frequency": "3580.1599999999999",
                "width": "820.74000000000001",
                "type": "peak"
              },
              "band23": {
                "gain": "0",
                "frequency": "4507.1499999999996",
                "width": "1033.25",
                "type": "peak"
              },
              "band24": {
                "gain": "0",
                "frequency": "5674.1599999999999",
                "width": "1300.78",
                "type": "peak"
              },
              "band25": {
                "gain": "0",
                "frequency": "7143.3500000000004",
                "width": "1637.5899999999999",
                "type": "peak"
              },
              "band26": {
                "gain": "0",
                "frequency": "8992.9400000000005",
                "width": "2061.5999999999999",
                "type": "peak"
              },
              "band27": {
                "gain": "0",
                "frequency": "11321.450000000001",
                "width": "2595.4000000000001",
                "type": "peak"
              },
              "band28": {
                "gain": "0",
                "frequency": "14252.860000000001",
                "width": "3267.4200000000001",
                "type": "peak"
              },
              "band29": {
                "gain": "0",
                "frequency": "17943.279999999999",
                "width": "4113.4399999999996",
                "type": "peak"
              }
            },
            "filter": {
              "state": "false",
              "input-gain": "0",
              "output-gain": "0",
              "frequency": "2000",
              "resonance": "-3",
              "mode": "12dB\/oct Lowpass",
              "inertia": "20"
            },
            "gate": {
              "state": "false",
              "detection": "RMS",
              "stereo-link": "Average",
              "range": "-24",
              "attack": "20",
              "release": "250",
              "threshold": "-18",
              "ratio": "2",
              "knee": "9",
              "makeup": "0"
            },
            "limiter": {
              "state": "false",
              "input-gain": "0",
              "limit": "0",
              "lookahead": "5",
              "release": "50",
              "asc": "false",
              "asc-level": "0.5",
              "oversampling": "1",
              "autovolume": {
                "state": "false",
                "window": "1000",
                "target": "-12",
                "tolerance": "1",
                "threshold": "-50"
              }
            },
            "pitch": {
              "state": "false",
              "cents": "0",
              "semitones": "0",
              "octaves": "0",
              "crispness": "3",
              "formant-preserving": "false",
              "faster": "false"
            },
            "reverb": {
              "state": "false",
              "input-gain": "0",
              "output-gain": "0",
              "room-size": "Large",
              "decay-time": "1.5",
              "hf-damp": "5000",
              "diffusion": "0.5",
              "amount": "-12",
              "dry": "0",
              "predelay": "0",
              "bass-cut": "300",
              "treble-cut": "5000"
            },
            "webrtc": {
              "state": "false",
              "high-pass-filter": "true",
              "echo-cancel": "true",
              "echo-suppression-level": "moderate",
              "noise-suppression": "true",
              "noise-suppression-level": "moderate",
              "gain-control": "true",
              "extended-filter": "true",
              "delay-agnostic": "false",
              "target-level-dbfs": "3",
              "compression-gain-db": "9",
              "limiter": "true",
              "gain-control-mode": "adaptive-digital",
              "voice-detection": "false",
              "voice-detection-frame-size-ms": "10",
              "voice-detection-likelihood": "low"
            }
          },
          "output": {
            "plugins_order": [
            "limiter",
            "filter",
            "expander",
            "bass_enhancer",
            "compressor",
            "exciter",
            "stereo_enhancer",
            "reverb",
            "equalizer",
            "panorama",
            "crossfeed",
            "delay",
            "maximizer"
            ],
            "bass_enhancer": {
              "state": "false",
              "input-gain": "0",
              "output-gain": "0",
              "amount": "-2",
              "harmonics": "9.9999999999999805",
              "scope": "250",
              "floor": "120",
              "blend": "10",
              "floor-active": "false",
              "listen": "true"
            },
            "compressor": {
              "state": "false",
              "detection": "RMS",
              "stereo-link": "Average",
              "mix": "0",
              "attack": "20",
              "release": "250",
              "threshold": "-18",
              "ratio": "2",
              "knee": "9",
              "makeup": "0"
            },
            "crossfeed": {
              "state": "false",
              "fcut": "700",
              "feed": "4.5"
            },
            "delay": {
              "state": "false",
              "m-l": "0",
              "cm-l": "0",
              "m-r": "0",
              "cm-r": "0",
              "temperature": "30"
            },
            "equalizer": {
              "state": "true",
              "num-bands": "30",
              "band0": {
                "gain": "4.2000000000000002",
                "frequency": "22.589254117941671",
                "width": "5.1785082358833456",
                "type": "peak"
              },
              "band1": {
                "gain": "4.2999999999999998",
                "frequency": "28.438186042552807",
                "width": "6.5193556133389272",
                "type": "peak"
              },
              "band2": {
                "gain": "3.8999999999999999",
                "frequency": "35.801555074299934",
                "width": "8.2073824501553219",
                "type": "peak"
              },
              "band3": {
                "gain": "3.6000000000000001",
                "frequency": "45.071487464784603",
                "width": "10.332482330814017",
                "type": "peak"
              },
              "band4": {
                "gain": "3.7000000000000002",
                "frequency": "56.741640916779602",
                "width": "13.007824573175988",
                "type": "peak"
              },
              "band5": {
                "gain": "3.2999999999999998",
                "frequency": "71.433493657033537",
                "width": "16.375880907331869",
                "type": "peak"
              },
              "band6": {
                "gain": "3",
                "frequency": "89.929440418076979",
                "width": "20.616012614755022",
                "type": "peak"
              },
              "band7": {
                "gain": "2.8999999999999999",
                "frequency": "113.21445781074659",
                "width": "25.95402217058421",
                "type": "peak"
              },
              "band8": {
                "gain": "-2.7000000000000002",
                "frequency": "142.52855792044753",
                "width": "32.674178048817666",
                "type": "peak"
              },
              "band9": {
                "gain": "-2.7999999999999998",
                "frequency": "179.43282347242823",
                "width": "41.13435305514372",
                "type": "peak"
              },
              "band10": {
                "gain": "-2.6000000000000001",
                "frequency": "225.89254117941681",
                "width": "51.785082358833478",
                "type": "peak"
              },
              "band11": {
                "gain": "-2.3999999999999999",
                "frequency": "284.3818604255282",
                "width": "65.193556133389279",
                "type": "peak"
              },
              "band12": {
                "gain": "-2.2999999999999998",
                "frequency": "358.01555074299949",
                "width": "82.073824501553304",
                "type": "peak"
              },
              "band13": {
                "gain": "-2.2999999999999998",
                "frequency": "450.71487464784627",
                "width": "103.3248233081402",
                "type": "peak"
              },
              "band14": {
                "gain": "-2.1000000000000001",
                "frequency": "567.41640916779625",
                "width": "130.07824573175992",
                "type": "peak"
              },
              "band15": {
                "gain": "-2.1000000000000001",
                "frequency": "714.33493657033569",
                "width": "163.75880907331873",
                "type": "peak"
              },
              "band16": {
                "gain": "-2",
                "frequency": "899.29440418077013",
                "width": "206.16012614755027",
                "type": "peak"
              },
              "band17": {
                "gain": "-1.8",
                "frequency": "1132.1445781074663",
                "width": "259.5402217058421",
                "type": "peak"
              },
              "band18": {
                "gain": "-2.2000000000000002",
                "frequency": "1425.2855792044757",
                "width": "326.7417804881768",
                "type": "peak"
              },
              "band19": {
                "gain": "-2.1000000000000001",
                "frequency": "1794.328234724283",
                "width": "411.34353055143742",
                "type": "peak"
              },
              "band20": {
                "gain": "-2.1000000000000001",
                "frequency": "2258.9254117941691",
                "width": "517.85082358833483",
                "type": "peak"
              },
              "band21": {
                "gain": "-2.1000000000000001",
                "frequency": "2843.8186042552834",
                "width": "651.93556133389347",
                "type": "peak"
              },
              "band22": {
                "gain": "-2.1000000000000001",
                "frequency": "3580.1555074299968",
                "width": "820.73824501553327",
                "type": "peak"
              },
              "band23": {
                "gain": "-2.2000000000000002",
                "frequency": "4507.1487464784641",
                "width": "1033.2482330814028",
                "type": "peak"
              },
              "band24": {
                "gain": "-3.1000000000000001",
                "frequency": "5674.1640916779661",
                "width": "1300.7824573176003",
                "type": "peak"
              },
              "band25": {
                "gain": "-2.5",
                "frequency": "7143.3493657033605",
                "width": "1637.5880907331884",
                "type": "peak"
              },
              "band26": {
                "gain": "-2.3999999999999999",
                "frequency": "8992.9440418077065",
                "width": "2061.6012614755045",
                "type": "peak"
              },
              "band27": {
                "gain": "-2.1000000000000001",
                "frequency": "11321.445781074672",
                "width": "2595.402217058423",
                "type": "peak"
              },
              "band28": {
                "gain": "-2.5",
                "frequency": "14252.855792044767",
                "width": "3267.4178048817703",
                "type": "peak"
              },
              "band29": {
                "gain": "-1.8",
                "frequency": "17943.282347242843",
                "width": "4113.4353055143765",
                "type": "peak"
              }
            },
            "exciter": {
              "state": "false",
              "input-gain": "0",
              "output-gain": "0",
              "amount": "0",
              "harmonics": "8.5",
              "scope": "7500",
              "ceil": "16000",
              "blend": "0",
              "ceil-active": "false",
              "listen": "false"
            },
            "filter": {
              "state": "false",
              "input-gain": "0",
              "output-gain": "0",
              "frequency": "2000",
              "resonance": "-3",
              "mode": "12dB\/oct Lowpass",
              "inertia": "20"
            },
            "limiter": {
              "state": "false",
              "input-gain": "0",
              "limit": "0",
              "lookahead": "5",
              "release": "50",
              "asc": "false",
              "asc-level": "0.5",
              "oversampling": "1",
              "autovolume": {
                "state": "false",
                "window": "1000",
                "target": "-12",
                "tolerance": "1",
                "threshold": "-50"
              }
            },
            "maximizer": {
              "state": "false",
              "release": "3.1600000000000001",
              "ceiling": "0",
              "threshold": "0"
            },
            "panorama": {
              "state": "false",
              "position": "0"
            },
            "reverb": {
              "state": "false",
              "input-gain": "0",
              "output-gain": "0",
              "room-size": "Large",
              "decay-time": "1.5",
              "hf-damp": "5000",
              "diffusion": "0.5",
              "amount": "-12",
              "dry": "0",
              "predelay": "0",
              "bass-cut": "300",
              "treble-cut": "5000"
            },
            "stereo_enhancer": {
              "state": "false",
              "input-gain": "0",
              "output-gain": "0",
              "side-gain": "0",
              "middle-phase": "false",
              "left-phase": "false",
              "left-balance": "-1",
              "left-delay": "2.0499999999999998",
              "left-gain": "0",
              "right-phase": "false",
              "right-balance": "1",
              "right-delay": "2.1200000000000001",
              "right-gain": "0"
            },
            "expander": {
              "state": "false",
              "sidechain": {
                "mode": "RMS",
                "lookahead": "0",
                "listen": "false",
                "source": "Middle",
                "reactivity": "10",
                "preamp": "0"
              },
              "mode": "Up",
              "attack-level": "-12",
              "attack-time": "20",
              "release-level": "-100",
              "release-time": "100",
              "ratio": "4",
              "knee": "-6",
              "makeup": "0"
            }
          }
        } " >> /home/superb2enh.json


        alias ascd='/home/*/.config/PulseEffects/'
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
