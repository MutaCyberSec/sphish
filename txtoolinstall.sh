function banner()
{

echo  -e "\e[1;32m     ▄▄▄▄     ▄▄▄▄    ▄▄▄▄▄     ▄▄▄▄▄▄▄▄                ▄▄▄   ▄▄▄▄▄▄▄▄ \e[0m"
echo  -e "\e[1;32m   ██▀▀▀▀█   ██▀▀██   ██▀▀▀██   ██▀▀▀▀▀▀               ▄███   ▀▀▀▀▀███ \e[0m"
echo  -e "\e[1;32m  ██▀       ██    ██  ██    ██  ██                    █▀ ██       ▄██ \e[0m"
echo  -e "\e[1;32m  ██        ██    ██  ██    ██  ███████             ▄█▀  ██       ██ \e[0m"
echo  -e "\e[1;32m  ██▄       ██    ██  ██    ██  ██                  ████████     ██ \e[0m"
echo  -e "\e[1;32m   ██▄▄▄▄█   ██▄▄██   ██▄▄▄██   ██▄▄▄▄▄▄                 ██     ██ \e[0m"
echo  -e "\e[1;32m     ▀▀▀▀     ▀▀▀▀    ▀▀▀▀▀     ▀▀▀▀▀▀▀▀                 ▀▀    ▀▀ \e[0m"
echo " "

echo  -e "\e[1;32m Cracks Cracking Software  \e[0m"
}

banner

if [ "$PREFIX" = "/data/data/com.termux/files/usr" ]; then

aptfolder="/data/data/com.termux/files/usr/etc/apt"

binfolder="/data/data/com.termux/files/usr/bin"

share="/data/data/com.termux/files/usr/share"


sharetxt="/data/data/com.termux/files/usr/share/txtool"


elif [ "$(uname)" = "Darwin" ]; then

binfolder="/usr/local/bin/"

aptfolder="/etc/apt"

share="/usr/share"

sharetxt="/usr/share/txtool"

else 
 echo "Not Yet Configured To your System. Report  Bug Via hackerlifetaker47@gmail.com"
exit

fi

echo -e  "\e[1;32m Installation On Progrsss....Please Wait \e[0m"

sleep 2

echo " "
cp -f  txtool "binfolder"

cd share && mkdir txtool

cd ~/txtool && cp -r -f  other module core "$sharetxt"


echo  -e "\e[1;32m Installing Dependancies\e[0m"
sleep 2
echo " "


apt install nmap -y



apt install php -y



apt install curl -y




pip2 install requests


pip2 install bs4

echo " "


echo -e "\e[1;32m  Installation Complete  \e[0m"

echo "Txtool For Everyone"


