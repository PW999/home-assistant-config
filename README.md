# home-assistant-config
[![The unlicense](https://img.shields.io/github/license/PW999/home-assistant-config)](LICENSE)
![Last commits](https://img.shields.io/github/last-commit/PW999/home-assistant-config)
![Maintenance](https://img.shields.io/maintenance/yes/2022)
![Ruby](https://img.shields.io/badge/Made%20with-Ruby-red?logo=ruby)


This is the home-assistant configuration which I'm using in my little appartment.

# Hardware
This is a very short list of the hardware I'm using:

* Raspberry Pi 3B running from a USB HDD
* Conbee stick (Zigbee/Deconz)
  * Xiaomi Aqara sensors
  * Xiaomi Mi Smart plug
  * Osram Smart+ Motion sensors
  * Osram Smart+ Switch mini
  * Osram Smart+ Light bulb
  * Osram Lightify wall socket
  * Philips Hue spots
* HM-MOD-RPI-PCB (Homematic/Raspberrymatic)
  * Homematic basic thermostat
* ESPHome
  * GoSund SP-112 wifi power plug (replaced original firmware with ESPHome)
  * GoSund SP-1 wifi power plug (replaced original firmware with ESPHome)
* Other
  * ESP8266 running WLED + LED strips
  * Roomba 690
  * Foscam R2M Wifi camera
  * Fluvius Smart meter with [SlimmeLezer](https://www.zuidwijk.com/slimmelezer-smartreader/)
* ~~HP Touchpad with Evervolv ROM to run Wallpanel on (appdaemon dashboard)~~ (dead again)

# Installation
I'm running Home Assistant Supervised on Raspbian 10. The following is a complete list of the containers running on my Pi (apart from the default HA containers)

* ghcr.io/hassio-addons/appdaemon/armv7
* esphome/esphome-hassio-armv7
* homeassistant/armhf-addon-deconz
* grafana/grafana
* influxdb
* ghcr.io/jens-maus/raspberrymatic
* gists/samba-server
