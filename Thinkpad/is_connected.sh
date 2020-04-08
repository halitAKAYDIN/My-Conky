if [[ `nmcli -t device show tun0 | grep "GENERAL.STATE"` == *"(connected)"* ]] || [[ `nmcli -t device show tun0 | grep "GENERAL.STATE"` == *"(connected)"* ]];then
   if [[ `nmcli -t device show tun0 | grep "GENERAL.STATE"` == *"(connected)"* ]];then
      echo "wifi connected:" `nmcli -t device show tun0 | grep "GENERAL.CONNECTION" | cut -d":" -f2-` ""
    elif [[ `nmcli -t device show eth0 | grep "GENERAL.STATE"` == *"(connected)"* ]];then
      echo "cable connected:" `nmcli -t device show eth0 | grep "GENERAL.CONNECTION" | cut -d":" -f2-` ""
   fi
else 
   echo "not connected"
fi