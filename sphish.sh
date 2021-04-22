#!/bin/bash
function start()
{
echo -e "\e[1;31m                ____    ____    _   _   ___   ____    _   _  \e[0m"
echo -e "\e[1;31m               / ___|  |  _ \  | | | | |_ _| / ___|  | | | | \e[0m"
echo -e "\e[1;34m               \___ \  | |_) | | |_| |  | |  \___ \  | |_| | \e[0m"
echo -e "\e[1;32m                ___) | |  __/  |  _  |  | |   ___) | |  _  | \e[0m"
echo -e "\e[1;32m               |____/  |_|     |_| |_| |___| |____/  |_| |_| \e[0m"
}
start
echo -e "\e[1;34m        Installing All Requirements And Stabilizing The System \e[0m"
echo "Action Starts At"
date
sleep 1
apt install python -y
apt install git
apt install python2
apt install figlet -y
apt install toilet -y
apt install curl -y
apt install cmatrix -y
clear
function xhead()
{
clear
echo -e "\e[1;31m	                ____    ____    _   _   ___   ____    _   _\e[0m"
echo -e "\e[1;31m	               / ___|  |  _ \  | | | | |_ _| / ___|  | | | | \e[0m"
echo -e "\e[1;34m	               \___ \  | |_) | | |_| |  | |  \___ \  | |_| | \e[0m"
echo -e "\e[1;32m	                ___) | |  __/  |  _  |  | |   ___) | |  _  | \e[0m"
echo -e "\e[1;32m	               |____/  |_|     |_| |_| |___| |____/  |_| |_| \e[0m"

}
xhead
echo -e "\e[1;32m	       	          LETS FIRST TRY YOUR MEDULA AND ENGLISH \e[0m"
echo "They Say I  Exist...But Nobody Has Ever Seen Me While I Have Been There Since The Begininning"
echo "When You See Me I Die But I Still Remain A Mystery"
echo -e "\e[1;31m Who Am I {°∆°} \e[0m"

function notinstalled()
{
echo "Not Installed...Check Your Internet"
}

function bud()
{
clear
echo -e "\e[1;31m Validating Information................................ \e[0m"
sleep 2
echo " "
xhead
echo "		           [★★]Info Successfully Validated. You Can Proceed[★★]"
echo  -e "\e[1;32m   Here You Can Do Some Basic System And Connection Cheqs Or Something Advanced \e[0"
echo ""
echo " sEnter  1 For Basic System  Or 2 for Advanced Options";read option
if [[ $option -eq 1 ]]; then
    basic
elif [[ $option -eq 2 ]]; then
    adv
else
echo "Invalid Option.....Restarting The Script"
    bud

fi
}

function adv()
{
xhead
echo -e "\e[1;32m                              WELCOME TO ADVANCED  MENU\e[0m"

echo -e "\e[1;32m Select An Option \e[0m"
echo " "
echo "[1] To Assign Static IP To Network Interface"
echo "[2]To Install Hacking Tools"
echo "[3]To To Asses Server Health"
echo "[4]For DOS Attack On Ip"
echo " "
echo "WHAT IS YOUR OPTION";read opt2
if [[ $opt2 -eq 1 ]]; then
        ntmask
elif [[ $opt2 -eq 2 ]]; then
        tools

elif [[ $opt2 -eq 3 ]]; then
         server
elif [[ $opt2 -eq 4 ]]; then
	dos
else
	adv
fi
}

function ntmask()
{
echo "What Interface Do You Choose?"
        echo "[1]For  wlan0"
        echo "[2]For eth0"
        echo "[99]To Go Back"
        read interface
        if [[ $interface -eq 1 ]]; then
       sudo  ifconfig wlan0 192.168.1.100 netmask 255.255.255.0
        sleep 2
        echo -e "\e[1;34m  ✓✓Successful \e[0m"
       sleep 1
	ntmask
	 elif [[ $interface -eq 2 ]]; then
       sudo   ifconfig eth0 192.168.1.100 netmask 255.255.255.0
        sleep 2
        echo -e "\e[1;34m  ✓✓Successful \e[0m"
        ntmask
	elif [[ $interface -eq 99 ]]; then
	        adv
else
echo "Invalid Option"
echo "Restarting......"
sleep 2
        ntmask
fi
}


function tools()
{
xhead

echo -e "\e[1;32m      Doing Important Installs And Checks.......\e[0m"

apt update && apt upgrade
apt install git
clear

echo -e "\e[1;32m       Type The Number Which Labels The Tool You Need\e[0m"
echo " "
echo -e "\e[1;34m [1]Nmap                       [16]TxTool \e[0m"
echo -e "\e[1;34m [2]Zarp                       [17]theHarvester  \e[0m"
echo -e "\e[1;34m [3]TBomb                      [18]SayCheese \e[0m"
echo -e "\e[1;34m [4]RedHawk                    [19]Cupp \e[0m"
echo -e "\e[1;34m [5]Hunner                     [20]Hydra  \e[0m"
echo -e "\e[1;34m [6]Sqlmap                     [21]WhatBreach  \e[0m"
echo -e "\e[1;34m [7]Websploit                  [22]Commix \e[0m"
echo -e "\e[1;34m [8]PwnXSS                     [23]Tmux \e[0m"
echo -e "\e[1;34m [9]Metasploit                 [24]EvilUrl \e[0m"
echo -e "\e[1;34m [10]Proxychains               [25]AndroBug \e[0m"
echo -e "\e[1;34m [11]Hammer                    [26]checkURL \e[0m"
echo -e "\e[1;34m [12]AstraNmap                 [27]HashCode \e[0m"
echo -e "\e[1;34m [13]Breacher                  [28]WordPress WPSCAN \e[0m"
echo -e "\e[1;34m [14]Spammer-Graab             [29]Goblin Word Generator \e[0m"
echo -e "\e[1;34m [15]Fsociety                  [30]Weevely \e[0m"
echo -e "\e[1;32m [99] Enter 99 To Go Back \e[0m"
read tool

if [[ $tool  -eq 1 ]]; then
        xnmap
elif [[ $tool  -eq 2 ]]; then
        zarp

elif [[ $tool  -eq 3 ]]; then
        tbomb

elif [[ $tool  -eq 4 ]]; then
        redhawk

elif [[ $tool  -eq 5 ]]; then
        hunner

elif [[ $tool -eq 6 ]]; then
        sqlmap

elif [[ $tool -eq 7 ]]; then
        websploit

elif [[ $tool -eq 8 ]]; then
 pwnxss

elif [[ $tool -eq 9 ]]; then
        metasploit

elif [[ $tool -eq 10 ]]; then
        proxy

elif [[ $tool  -eq 11 ]]; then
        hammer

elif [[ $tool -eq 12 ]]; then
        astranmap

elif [[ $tool -eq 13 ]]; then
        breacher

elif [[ $tool -eq 14 ]]; then
        spammer

elif [[ $tool -eq 15 ]]; then
        fsociety

elif [[ $tool -eq 16 ]]; then
        txtool

elif [[ $tool -eq 17 ]]; then
        harvest

elif [[ $tool -eq 18 ]]; then
        saycheese

elif [[ $tool -eq 19 ]]; then
        cupp

elif [[ $tool -eq 20 ]]; then
        hydra

elif [[ $tool -eq 21 ]]; then
        whatbreach

elif [[ $tool -eq 22 ]]; then
        commix

elif [[ $tool -eq 23 ]]; then
        tmux

elif [[ $tool -eq 24 ]]; then
        evilurl

elif [[ $tool -eq 25 ]]; then
        androbug

elif [[ $tool -eq 26 ]]; then
        checkurl

elif [[ $tool -eq 27 ]]; then
        hashcode

elif [[ $tool -eq 28 ]]; then
        wpscan

elif [[ $tool -eq 29 ]]; then
        goblin

elif [[ $tool -eq 30 ]]; then
        weveely
elif [[ $tool -eq 99 ]]; then
	clear
	adv
else
clear
tools
fi

}

function xnmap()
{
cd
apt install Nmap
echo "   [✓]Nmap Successfully Installed.  Type >>nmap>>To use"
sleep 1
echo "Hit Enter To Go Back"
read a3
tools
}

function redhawk()
{
cd && cd ~
apt install  php
link="git clone https://github.com/Tuhinshubhra/RED_HAWK"
$link
echo "   [✓]RED_HAWK Successfully  Installed. Lanuch it from its Directory By >>php rhawk.php>"
sleep 1
echo "Hit Enter To Go Back"
read a3
tools
}

function harvest()
{
cd && cd ~
link="git clone https://github.com/laramies/theHarvester"
$link
cd theHarvester  && chmod +x * || sudo chmod +x *
echo "[✓]TheHarvester Successfully Installed. Launch It From Its Directory By>>python2 >"
sleep 1
echo "Hit Enter To Go Back"
read a3
tools
}

function tbomb()
{
cd && cd ~
link="git clone https://github.com/TheSpeedX/TBomb.git"
$link
cd TBomb && pip3 install -r requirements.txt && chmod +x * ||  sudo chmod +x *
echo "[✓]TBomb Successfully Installed. Launch It From Its Directory By >>./Tbomb.sh>>"
sleep 1
echo "Hit Enter To Go Back"
read a3
tools
}

function hunner()
{
cd && cd ~
link="git clone https://github.com/b3-v3r/Hunner"
$link
cd Hunner && chmod +x * || chmod +x *
echo "[✓] Hunner Successfully Installed.Launch It From Its Directory By >>python3 hunne>"
 sleep 1
echo "Hit Enter To Go Back"
read a3
tools
}

function sqlmap()
{
cd && cd ~
link="git clone https://github.com/sqlmapproject/sqlmap"
$link
cd sqlmap && chmod +x * || sudo chmod +x *
echo "[✓]Sqlmap Successfully Installed.Launch It From Its Directory By >>python2 sqlmap.py>"
sleep 1
echo "Hit Enter To Go Back"
read a3
tools
}

function zarp()
{
cd && cd ~
link="git clone https://github.com/hatRiot/zarp.git"
$link
cd zarp && chmod +x * || sudo chmod +x * && pip install -r  requirements.txt
echo "[✓]Zarp Successfully Installed. Launch It From Its Directory By>>python zarp.py ->"
sleep 1
echo "Hit Enter To Go Back"
read a3
tools
}
function websploit()
{
cd && cd ~
link="git clone https://github.com/The404Hacking/websploit"
$link
cd websploit && chmod +x * || sudo chmod +x *  pip install -r requirements.txt && python setup.py install
echo "[✓]Websploit Successfully Installed. Type >>websploit>>To Use"
sleep 1
echo"Hit Enter To Go Back"
read a3
tools
}
function pwnxss()
{
cd && cd ~
link="git clone https://github.com/pwn0sec/PwnXSS"
$link
cd PwnXSS && pip3 install  -r requirements.txt && chmod +x * || chmod +x *
echo "[✓]PwnXSS Successfully Installed. Launch It From Its Directory By >>python3 pwnxss.py>"
sleep 1
echo "Hit Enter To Go Back"
read a3
tools
}
function metasploit()
{
cd && cd ~
echo"This Tool Is Big..It Is up To 1 gb + It Might Take Some Time"
echo "STARTING AT........."
sleep 1
data="date"
$data
apt install unstable-repo
apt install metasploit -y
echo"[✓]Metasploit Successfully Installed. Type  >>msfconsole>> To Use"
sleep 1
echo"Hit Enter To Go Back"
read a3
tools
}

function proxy()
{
cd && cd ~
link="git clone https://github.com/haad/proxychains.git"
$link
echo "[✓]Proxychains Successfully Installed. Configure It From >>/etc/proxychains.conf>>"
echo "[✓]Usage >>export PROXY_DNS_SERVER=8.8.8.8>> then>>proxychains telnet targethost.com>"
sleep 3
echo "Hit Enter To Go Back"
read a3
tools
}

function hammer()
{
cd  && cd ~
link="git clone https://github.com/cyweb/hammer"
$link
cd hammer && chmod +x hammer.py || sudo chmod +x hammer.py
echo"[✓]Hammer Successfully Installed. Launch It From Its Directory By>>python hammer.py>"
sleep 1
echo "Hit Enter To Go Back"
read a3
tools
}

function astranmap()
{
cd && cd ~
apt update  && apt upgrade -y
link="git clone http://github.com/Gameye98/AstraNmap"
$link
cd AstraNmap && chmod +x astranmap.sh || sudo chmod +x astranmap.sh
echo"[✓]AstraNmap Successfully Installed. Launch It From Its Directory By >>bash astranmap.sh>"
sleep 1
echo "Hit Enter To Go Back"
read a3
tools
}

function breacher()
{
cd && cd ~
link="git clone https://github.com/s0md3v/Breacher.git "
$link
cd Breacher && chmod +x breacher.py || sudo chmod +x breacher.py
echo "[✓]Breacher Successfully Installed. Launch It From Its Directory By>>python breacher.py"
sleep 1
echo "Hit Enter To Go Back"
read a3
tools
}
function spammer()
{
cd && cd ~
apt update && apt upgrade
link="git clone https://github.com/p4kl0nc4t/Spammer-Grab"
$link
cd spammer-grab && chmod +x spammer.py || sudo chmod +x spammer.py && pip install -r REQUIREMENTS 
echo "[✓]Spammer-grab Succesfully Installed. Launch It From Its Directory By >> python  spammer.py"
sleep 1
echo "Hit Enter To Go Back"
read a3
tools
}

function fsociety()
{
cd && cd ~
link="git clone https://github.com/Manisso/fsociety"
$link
cd fsociety && chmod +x install.sh || sudo +x install.sh && bash install.sh
echo "[✓]Fsociety Successfully Installed. Type>>fsociety>>To use."
sleep 1
echo "Hit Enter To Continue"
read a3
tools
}

function txtool()
{
cd && cd ~
link="git clone https://github.com/kuburan/txtool.git"
$link
cd txtool && pip3 install - r requirement.txt chmod +x * || sudo chmod +x * && python2 install.py
echo"[✓]txtool Successfully Installed.Launch It By>>txtool>>"
sleep 1
echo "Hit Enter To Go Back"
read a3
tools
}


 function goblin()
{
cd && cd ~
link="git clone https://github.com/UndeadSec/GoblinWordGenerator"
$link
cd GoblinWordGenerator && chmod +x * || sudo chmod +x *
echo"[✓]Goblin Successfully Installed. Launch It From Its Directory By >>python3 goblin.py>"
sleep 1
echo"Hit Enter To Go Back"
read a3
tools
}
function saycheese()
{
cd && cd ~
link="git clone https://github.com/thelinuxchoice/saycheese"
$link
cd saychese && chmod +x saycheese.sh || sudo chmod +x saycheese.sh
echo"[✓]Saycheese Successfully Installed. Launch It From Its Directory By>>sudo bash saycheese.sh>"
sleep 1
echo"Hit Enter To Go Back"
read a3
tools
}
function cupp()
{
cd && cd ~
link="git clone https://github.com/Mebus/cupp"
$link
cd cupp && chmod +x cupp.py || sudo chmod +x cupp.py
echo "[✓]Cupp Successfully Installed.Lauch It From Its Directory By>>python3 cupp.py>>"
sleep 1
echo "Hit Enter To Go Back"
read a3
tools
}

function hydra()
{
cd && cd ~
apt update && apt upgrade
apt install hydra
echo "[✓]Hydra Successfully Installed.Type >>hydra>>To Use"
sleep 1
echo "Hit Enter To Go Back"
tools
}

function whatbreach()
{
cd && cd ~
link="git clone https://github.com/Ekultek/WhatBreach.git"
$link
cd WhatBreach &&  pip install -r requirements.txt && chmod +x  whatbreach.py || sudo chmod +x whatbreach.py
echo "[✓]WhatBreach Successfully Installed. Launch It From Its Directory By>>python whatbreach.py>"
sleep 1
echo "Hit Enter To Go Back"
read a3
        tools
}

function commix()
{
cd && cd ~
link="git clone https://github.com/commixproject/commix"
$link
cd commix && chmod +x commix.py || sudo chmod +x commix.py
echo "[✓]Commix Successfully Installed. Launch It From Its Directory By>>python commix.py>"
sleep 1
echo "Hit Enter To Go Back"
read a3
tools
}
function tmux()
{
cd && cd ~
apt install tmux -y
echo "[✓]Tmux Successfully Installed. Type >>tmux  split-window -h or -w>>"
sleep 1
echo "Hit Enter To Go Back"
read a3
tools
}

function evilurl()
{
cd && cd ~
link="git clone https://github.com/UndeadSec/EvilURL"
$link
cd EvilURL && chmod +x evilurl.py || sudo chmod +x evilurl.py
echo "[✓]EvilURL Successfully Installed. Launch It From Its Directory By >>python evilurl.py>"
sleep 1
echo "Hit Enter To Go Back"
read a3
tools
}

function checkurl()
{
cd && cd ~
apt install python3
link="git clone https://github.com/UndeadSec/checkURL.git "
$link
cd checkURL && sudo chmod +x * || sudo chmod +x *
echo "[✓]checkURL Successfully Installed. Launch It From Its Directory By>>python3 checkurl.py>"
sleep 1
echo "Hit Enter To Go Back"
read a3
tools
}

function hashcode()
{
cd && cd ~
link="git clone https://github.com/Sup3r-Us3r/HashCode"
$link
cd HashCode && chmod +x * || sudo  chmod +x *
echo "[✓]HashCode Successfully Installed. Launch It From Its Directory By>> python3 hashcode.py>"
sleep 1
echo "Hit Enter To Go Back"
read a3
tools
}

function wpscan()
{
cd && cd ~
apt install ruby -y
link="git clone https://github.com/wpscanteam/wpscan"
$link
cd wpscan && chmod +x * || sudo chmod +x * && gem install bundle && apt install -j5
echo "[✓]Wpscan Successfully Installed.Launch It From Its Directory By >>ruby wpscan.rb>"
sleep 1
echo "Hit Enter To Go Back"
read a3
tools
}
function weevely()
{
cd && cd ~
link="git clone https://github.com/glides/Weevely"
$link
cd Weevely && chmod +x weevely.py || sudo chmod +x weevely.py
echo "[✓]Weevely Successfully Installed. Launch It From Its Dorectory By>>python2 weevely.py>"
sleep 1
echo "Hit Enter To Go Back"
read a3
tools
}

function androbug()
{
cd && cd ~
link="git clone https://github.com/AndroBugs/AndroBugs_Framework.git"
$link
if [[ -d AndroBugs_Framework ]]; then
cd AndroBugs_Framework && chmod +x * || sudo chmod +x *
echo "[✓]AndroBugs Successfully Installed. "
echo "Usage: 1st Command.>>mv app.apk /$HOME/AndroBugs_Framework/"
echo "Usage 2nd Command.>>python2 androbugs.py -f app.apk -o result.txt"
else
notinstalled
sleep 2
echo "Hit Enter To Go Back"
read a3
tools
}


function server()
{
xhead

echo "What Services Do You Want to Check?"
echo "1 For Tcp or 2 for Udp Connections"
read conc

if [[ $conc -eq 1 ]]; then
	netstat -t -e -l
elif [[ $conc -eq 2 ]]; then
        netstat -u -e -l
else
server
fi
echo  "Enter Server IP  Address Press Enter For Local Host>>"
read add
echo "If IP Doesnot Exist The Test Runs On Local Host"
echo " "
date
nmap -p- -T4 -A  $add
echo "uptime:"
uptime
echo "Currently connected:"
w
echo "--------------------"
echo "Last logins:"
last -a | head -3
echo "--------------------"
echo "Disk and memory usage:"
df -h | xargs | awk '{print "Free/total disk: " $11 " / " $9}'
free -m | xargs | awk '{print "Free/total memory: " $17 " / " $8 " MB"}'
echo "--------------------"
start_log=$(head -1 /var/log/messages | cut -c 1-12)
oom=$(grep -ci kill /var/log/messages)
echo -n "OOM errors since $start_log :" $oom
echo ""
echo "--------------------"
echo "Utilization and most expensive processes:"
top -b | head -3
echo
top -b | head -10 | tail -4
echo "--------------------"
echo "Open TCP ports:"
nmap -p -T4 $add
echo "--------------------"
echo "Current connections:"
sudo ss -s
echo "--------------------"
echo "processes:"
ps auxf --width=200
echo "--------------------"
echo "vmstat:"
sudo vmstat 1 5
echo "**------------------"
echo "Hit Enter To Go Back"
read a3
sleep 2
adv
}

function enter()
{
echo -e "\e[1;33m Hit Enter To Go Back \e[0m"
read a3
}

function dos()
{
xhead
echo "Enter The Target Ip"
read IP
tIP="$IP"
echo " "
echo "Enter Port To Connect"
read port
tport ="$port"
echo "Testing For HoneyPot"
cd nukes && ./killer.sh $tIP  $tport
}


function  basic()
{
xhead
echo -e "\e[1;32m                                       WELCOME TO BASIC MENU\e[0m"
echo -e "\e[1;32m                             This Includes Online And Offline Options\e[0m"
echo "Please Type A Number Which Labels What You Want To Do"
echo
echo  "[1] To Ckeck Your Kernel Information"
echo  "[2] To See Disk Usage On Your System"
echo  "[3] To See Information About  Logged in User"
echo  "[4] To See The System Uptime Since Boot"
echo  "[5] To Dispaly The Calender"
echo  "[6] To Display Running Processes"
echo  "[7] To Check Your IP"
echo  "[8] To See Your Network Activities"
echo -e "\e[1;33m [99] Enter 99 To Go Back \e[0m"
read -p $'\e[1;92m[\e[0m\e[1;77m?\e[0m\e[1;92m] What Is Your Option?' opt
if [[ $opt -eq 1 ]]; then
        uname -a
sleep 1
enter
basic
elif [[ $opt -eq 2 ]]; then
        df
sleep 1
enter
basic
elif [[ $opt -eq 3 ]]; then
        whoami
sleep 1
enter
basic
elif [[ $opt -eq 4 ]]; then
        uptime
sleep 1
enter
basic
elif [[ $opt -eq 5 ]]; then
        cal
sleep 1
enter
basic
elif [[ $opt -eq 6 ]]; then
        top
sleep 1
enter
basic

elif [[ $opt -eq 7 ]]; then
        ifconfig
sleep 1
enter
basic
elif [[ $opt -eq 8 ]]; then
        netstat
sleep 1
enter
basic
elif [[ $opt -eq 99 ]]; then
	bud
sleep 1
basic
else
echo "Wrong Input......"
bud
fi
}

echo "Answer>";read ch
TM="tomorrow"
TM2=" Tomorrow"
TM1="Tommorrow"
TM3="tommorrow"
if [[ $ch ==  $TM ]]; then
        bud
elif [[ $ch ==  $TM1 ]]; then
        bud
elif [[ $ch ==  $TM2 ]]; then
        bud
elif [[ $ch ==  $TM3 ]]; then
	bud
  else
   clear
echo "Wrong Answer....Refresh And Retry"
echo "QUITING"

fi
