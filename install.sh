#!/bin/bash
echo "Installing Some Basic Requirements"
apt update && apt upgrade
apt install python -y
apt install figlet
cd /data/data/com.termux/files/usr/share/doc && mkdir sphish
apt install python2 -y
apt install wget
if [ "$PREFIX" = "/data/data/com.termux/files/usr" ]; then
    INSTALL_DIR="/data/data/com.termux/files/usr/share/doc/sphish"
    BIN_DIR="$PREFIX/bin/"
    BASH_PATH="$PREFIX/bin/bash"
    TERMUX=true

    pkg install -y git python2
elif [ "$(uname)" = "Darwin" ]; then
    INSTALL_DIR="/usr/local/sphish"
    BIN_DIR="/usr/local/bin/"
    BASH_PATH="/bin/bash"
    TERMUX=false
else
    INSTALL_DIR="$HOME/.sphish"
    BIN_DIR="/usr/local/bin/"
    BASH_PATH="/bin/bash"
    TERMUX=false

    sudo apt-get install -y git python2.7
fi

echo -e "\e[1;35m[✔] Checking Related  Directories...\e[0m";
if [ -d "$INSTALL_DIR" ]; then
    echo -e "\e[1;34m ^_^ A directory sphish was found... Do you want to replace it? [Y/n]\e[0m" ;
    read yeah
    if [ "$yeah" = "y" ]; then
        if [ "$TERMUX" = true ]; then
            rm -r -f "$INSTALL_DIR"
            rm "$BIN_DIR/sphish*"
	     cd  /data/data/com.termux/files/usr/share/doc && mkdir sphish
        else
            sudo rm -rf "$INSTALL_DIR"
            sudo rm "$BIN_DIR/sphish*"
		cd  /data/data/com.termux/files/usr/share/doc && mkdir sphish
        fi
    else
        echo "[✘] If You Want To Install Latest Version Of sphish You Must Remove Previous Installations [✘] ";
        echo "[✘]  Failed! [✘] ";
        exit
    fi
fi
 echo -e "\e[1;35m [✔] Cleaning up old directories...\e[0m";
if [ -d "$ETC_DIR/sphish" ]; then
    echo "$DIR_FOUND_TEXT"
    if [ "$TERMUX" = true ]; then
        rm -rf "$ETC_DIR/sphish"
    else
        sudo rm -rf "$ETC_DIR/sphish"
    fi
fi

echo -e "\e[1;34m[✔] Installing ...\e[0m";
echo "";
cd && cd sphish2 && cp -r nukes  sphish.cfg  sphish.sh "$INSTALL_DIR";
echo "#!$BASH_PATH
bash $INSTALL_DIR/sphish.sh" '${1+"$@"}' > "$INSTALL_DIR/sphish";
chmod +x "$INSTALL_DIR/sphish";
if [ "$TERMUX" = true ]; then
    cp "$INSTALL_DIR/sphish" "$BIN_DIR"
    cp "$INSTALL_DIR/sphish.cfg" "$BIN_DIR"
else
    sudo cp "$INSTALL_DIR/sphish" "$BIN_DIR"
    sudo cp "$INSTALL_DIR/sphish.cfg" "$BIN_DIR"
fi
rm "$INSTALL_DIR/sphish";


if [ -d "$INSTALL_DIR" ] ;
then
    echo "";
    echo -e "\e[1;35m[✔] Tool installed successfully! [✔]\e[0m";
    echo "";
    echo -e "\e[1;33m[✔]********************************************************************[✔]\e[0m";
    echo -e "\e[1;32m         	[✔]Wow Start The Party  by typing sphish ![✔]\e[0m";
    echo -e "\e[1;33m[✔]********************************************************************[✔]\e[0m";
    echo "";
else
 echo -e "\e[4;31m : ♠ : Installation Failed!!!: ♠ :\e[0m"
    exit
fi
