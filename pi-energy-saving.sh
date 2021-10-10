#!/bin/bash
# Turn OFF HDMI output
sudo /opt/vc/bin/tvservice -o

# Turn ON HDMI output
#sudo /opt/vc/bin/tvservice -p

# Turn OFF USB chip
# echo '1-1' |sudo tee /sys/bus/usb/drivers/usb/unbind

# Turn ON USB chip
# echo '1-1' |sudo tee /sys/bus/usb/drivers/usb/bind


# add in section [all] in /boot/config.txt
# Turn OFF WIFI
filename="/boot/config.txt"
echo "dtoverlay=pi3-disable-wifi" | tee -a ${filename}

# Turn OFF bluetooth 
echo "dtoverlay=pi3-disable-bt" | tee -a ${filename}

# Turn OFF on board leds
printf "dtparam=act_led_trigger=none\ndtparam=act_led_activelow=off\ndtparam=pwr_led_trigger=none\ndtparam=pwr_led_activelow=off\n" >> ${filename}
echo "Led's off"

# Turn OFF audio module
echo "dtparam=audio=off" | tee -a ${filename}


# Change of processor parameters 

# arm_freq_min=250
# core_freq_min=100
# sdram_freq_min=150
# over_voltage_min=0