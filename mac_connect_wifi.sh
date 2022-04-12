#while true ; networksetup -setairportnetwork en1 "PSK750" "PSKAP750" ; echo "###############################" ; networksetup -getairportnetwork en1 ; echo "###############################" ; do ping -c1 8.8.8.8 ; sleep 60 ; done
IFACE = "en1"
SSID = "PSK750"
PASSWD = "PSKAP750"
while true
do
   networksetup -setairportnetwork $IFACE $SSID $PASSWD
   echo "###############################"
   networksetup -getairportnetwork $IFACE
   echo "###############################"
   ping -c1 8.8.8.8
   sleep 60
done
