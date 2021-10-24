#!/bin/bash
# Turn OFF HDMI output
/opt/vc/bin/tvservice -o

# Turn ON HDMI output
#sudo /opt/vc/bin/tvservice -p

# Turn OFF Ethernet Driver
# echo -n "1-1.1:1.0" | sudo tee /sys/bus/usb/drivers/smsc95xx/unbind

# Turn ON  Ethernet Driver
# echo -n "1-1.1:1.0" | sudo tee /sys/bus/usb/drivers/smsc95xx/bind

# Turn OFF USB chip & ETH0
# echo '1-1' |sudo tee /sys/bus/usb/drivers/usb/unbind

# Turn ON USB chip & ETH0
# echo '1-1' |sudo tee /sys/bus/usb/drivers/usb/bind


# add in section [all] in /boot/config.txt
# Turn OFF WIFI
filename="/boot/config.txt"
echo "dtoverlay=pi3-disable-wifi" | tee -a ${filename}

# Turn OFF bluetooth 
echo "dtoverlay=pi3-disable-bt" | tee -a ${filename}

# Turn OFF on active led
printf "dtparam=act_led_trigger=none\ndtparam=act_led_activelow=off\n" >> ${filename}
echo "Active led off"

# Turn OFF on power led
printf "dtparam=pwr_led_trigger=none\ndtparam=pwr_led_activelow=off\n" >> ${filename}
echo "Power led off"

# Turn OFF audio module
echo "dtparam=audio=off" | tee -a ${filename}


# In /boot/config.txt change of processor parameters 

# arm_freq_min=250
# core_freq_min=100
# sdram_freq_min=150
# over_voltage_min=0
# gpu_freq=150
# h264_freq=25
# isp_freq=25
# v3d_freq=25