# home-assistant-config
[![The unlicense](https://img.shields.io/github/license/PW999/home-assistant-config)](LICENSE)
![Last commits](https://img.shields.io/github/last-commit/PW999/home-assistant-config)
![GitHub commit activity](https://img.shields.io/github/commit-activity/y/PW999/home-assistant-config)
![Maintenance](https://img.shields.io/maintenance/yes/2022)
![Home Assistant Version](https://img.shields.io/badge/Home%20Assistant%20Version-2022.08.07-blue)
![Ruby](https://img.shields.io/badge/Made%20with-Ruby-red?logo=ruby)


This is the home-assistant configuration which I'm using in my little appartment.

# Hardware
This is a very short list of the hardware I'm using:

## Core
RaspberryPi 3B + Debian 10 installed on a Western Digital Elements 500GB USB HDD
![RaspberryPi](./doc/img/raspberrypi.jpg)

## Zigbee
* ConbeeII stick (Zigbee/Deconz)
* Xiaomi Aqara temperature and humidity sensor (living room, kitchen, bathroom, office, bedroom, terrace)
* Xiaomi Aqara motion sensor (hall)
* Xiaomi Mi Smart plug ZNCZ04LM (bathroom fan)
* Osram Smart+ Motion sensors (hall/pantry)
* Osram Smart+ Switch mini (hall, living room)
* Osram Smart+ Light bulb (living room x2)
* Ledvance Smart+ smart plug AB32570 (living room)
* Philips Hue spots GU10 (hall, toilet)

## Homematic
* HM-MOD-RPI-PCB (Homematic/Raspberrymatic)
* Homematic basic thermostat (living + office)

## ESPHome
* GoSund (/Tuya) SP-112 wifi power plug (x4)
* GoSund (/Tuya) SP-1 wifi power plug (x2)

## WLED
* ESP82600 (living room x2, office)
  * Mean Well LPV100-12
  * BTF-Lighting WS2811 BTF-12V-60L-W

## Other hardware
* Roomba 690
* Foscam R2M Wifi camera
* Fluvius Smart meter with [SlimmeLezer](https://www.zuidwijk.com/slimmelezer-smartreader/)
* ~~HP Touchpad with Evervolv ROM to run Wallpanel on (appdaemon dashboard)~~ (dead again)

## Other integration
* CO2 Signal
* OpenSenseMap
* Luftdaten
* Bluetooth Device Tracker
* Nmap Device Tracker
* Raspberry Pi Power Supply Checker
* Waze Travel Time
* Buienradar
* Speedtest
* Onvif (for the Foscam IP camera)

# Installation
I'm running Home Assistant Supervised on Raspbian 10. The following is a complete list of the containers running on my Pi (apart from the default HA containers)

* esphome/esphome-hassio-armv7
* homeassistant/armhf-addon-deconz
* ghcr.io/jens-maus/raspberrymatic
* gists/samba-server

The databases (Postgres and InfluxDB2) are running on another, much faster server. One day I'll also migrate HA to it.