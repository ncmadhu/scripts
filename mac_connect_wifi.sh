IFACE="en1"
SSID="PSK750"
PASSWD="PSKAP750"
while true
do
   networksetup -setairportnetwork $IFACE $SSID $PASSWD
   echo "###############################"
   networksetup -getairportnetwork $IFACE
   echo "###############################"
   ping -c1 8.8.8.8
   sleep 60
done
