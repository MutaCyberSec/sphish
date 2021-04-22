#!bin/bash
x=0
while [ ifconfig | grep "192.168.100." > /dev/null ]; do
    echo "no nework"
    if "$x" -gt 200; then
        #Time out here
        exit 1
    x=$((x+1))
    sleep .1
    fi
done
