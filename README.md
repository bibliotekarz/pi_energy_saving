# pi_energy_saving

## Skrypt wyłącza zbędne usługi w raspberry pi.

Testowane na rasberry pi 3 

W skrypcie można doprecyzować parametry, domyślnie skrypt wyłącza:
* HDMI
* WIFI
* Bluetooth
* Action led
* Power led
* Audio

pozostawia włączone: 
* USB
* ETH0

### Sposób użycia:

Skopiować plik na raspberry pi

ustawić prawa do wykonania `chmod 777 pi-energy-saving.sh`

uruchomić plik jako root lub `sudo ./pi-energy-saving.sh`


## The script disables unnecessary services in raspberry pi 

Tested on raspberry pi 3

In the script you can specify the parameters, by default the script turns off:
* HDMI
* WIFI
* Bluetooth
* Action led
* Power led
* Audio

leaves turned on:
* USB
* ETH0 

### Usage:

Copy the file to the raspberry pi

set the rights to execute `chmod 777 pi-energy-saving.sh`

run the file as root or `sudo. / pi-energy-saving.sh` 