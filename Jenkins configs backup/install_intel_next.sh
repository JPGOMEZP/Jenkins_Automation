#!/bin/bash

intel_next_check_version (){

# Mainline=$(cat current_mainline)
#  Intel_Next=$(cat current_intel_next)
#    if [[ "$Mainline" > "$Intel_Next" ]]; then

     echo "Installing Intel Next Kernel...."
      DATE=$(date --date="2 day ago" "+%Y%m%d")
      echo "Date to create TAG: $DATE"
      VER=$(cat /home/lck/jenkins/lck/current_mainline | cut -d '=' -f2)
      echo "Current Kernel Version to create TAG: $VER"
      Number1=$(cat /home/lck/jenkins/lck/current_mainline | cut -d '=' -f2 | cut -d '.' -f1)
      Number2=$(cat /home/lck/jenkins/lck/current_mainline | cut -d '=' -f2 | cut -d '.' -f2 | cut -d '-' -f1)
      Number3=$(cat /home/lck/jenkins/lck/current_mainline | cut -d '=' -f2 | cut -d '.' -f2 | cut -d '-' -f2)
      TAG="$Number1.$Number2.0~$Number3-$DATE"
      echo "Version_intel_next=$TAG" > current_intel_next
      echo "***************************************"
      echo "New TAG Created: $TAG"
      echo "***************************************"
      #sudo apt-get --yes --force-yes  install linux-intel-next-generic-headers=$Number1.$Number2.0~$Numer3-$DATE
      #sudo apt-get --yes --force-yes install linux-intel-next-generic-image=4.15.0~rc2-$DATE
      #sudo apt-get --yes --force-yes install linux-intel-next-generic-libc-dev=4.15.0~rc2-$DATE
      #sudo apt-get --yes --force-yes install linux-intel-next-generic-tools=4.15.0~rc2-$DATE

#     return 0
#    else
#      echo "Theres is not change until now in Intel Next Tree"
#     return 1
#    fi

     return 0
}
intel_next_check_version
