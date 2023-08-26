# home-assistant-config
[![The unlicense](https://img.shields.io/github/license/PW999/home-assistant-config)](LICENSE)
![Last commits](https://img.shields.io/github/last-commit/PW999/home-assistant-config)
![GitHub commit activity](https://img.shields.io/github/commit-activity/y/PW999/home-assistant-config)
![Maintenance](https://img.shields.io/maintenance/yes/2023)
![Home Assistant Version](https://img.shields.io/badge/Home%20Assistant%20Version-2023.8-blue)
![Ruby](https://img.shields.io/badge/Made%20with-Ruby-red?logo=ruby)


Welcome to my Home Assistant configuration.
I mainly focus on using cloudless solution for controling and managing my devices.

# Hardware

## Core
HP Prodesk 600 G3 Desktop mini (Intel Core i5-7500T CPU with 16GB of RAM).

![HPProdesk](./doc/img/hpprodesk.jpg)

## Zigbee
* ConbeeII stick (Zigbee/Deconz)
* Xiaomi Aqara temperature and humidity sensor (living room, kitchen, bathroom, office, bedroom, terrace)
* Xiaomi Aqara motion sensor (hall)
* Xiaomi Mi Smart plug ZNCZ04LM (bathroom fan)
* Osram Smart+ Motion sensors (hall/pantry)
* Osram Smart+ Switch mini (hall, living room)
* Osram Smart+ Light bulb (living room x2)
* Ledvance Smart+ smart plug AB32570 (unused)
* Philips Hue spots GU10 (hall x3, toilet)
* Ikea TRÅDFRI motion sensor (bathroom)
* Ikea TRÅDFRI dimmer button (bathroom)
* Ikea TRÅDFRI 1055 lumen E27 bulb (bathroom)

## Homematic
* HM-MOD-RPI-PCB (Homematic/Raspberrymatic) on a Raspberry Pi-3B running from a USB SSD
* Homematic basic thermostat (living + office)

## ESPHome
* GoSund (/Tuya) SP-112 wifi power plug (x4)
* GoSund (/Tuya) SP-1 wifi power plug (x2)

## Tasmota
* Athom Tasmota EU plug V2 (x2)

## WLED
* [ESP8266](doc/img/wled.jpg) (living room x2, office x2)
  * Mean Well LPV100-12/Ledmo HTY-1200500 adapter
  * BTF-Lighting WS2811 BTF-12V-60L-W

## Other hardware
* Roomba 690
* Foscam R2M Wifi camera
* Reolink RLC-520A
* Fluvius Smart meter with [SlimmeLezer](https://www.zuidwijk.com/slimmelezer-smartreader/)
* [Heatbooster](https://www.sdr-engineering.nl/webshop/index.php?route=product/category&path=59_61)

## Other integration
### Local
* [Nmap Device Tracker](https://www.home-assistant.io/integrations/nmap_tracker)
* [Onvif](https://www.home-assistant.io/integrations/onvif) (for the Foscam IP camera)
* [MQTT](https://www.home-assistant.io/integrations/mqtt)
  * [LNXLink](https://bkbilly.github.io/lnxlink/)
* [Android Debug Bridge](https://www.home-assistant.io/integrations/androidtv) (Amazon FireTV stick)
* [Nginx add-on](https://github.com/home-assistant/addons/tree/master/nginx_proxy) (with self-signed certificate)
### Cloud
* ☁ [Electricity Maps](https://www.home-assistant.io/integrations/co2signal)
* ☁ [Sensor Community](https://www.home-assistant.io/integrations/luftdaten)
* ☁ [Met.no weather](https://www.home-assistant.io/integrations/met)
* ☁ [Waze Travel Time](https://www.home-assistant.io/integrations/waze_travel_time)
* ☁ [Buienradar](https://www.home-assistant.io/integrations/buienradar)

## Custom components
* [ICS Calendar](https://github.com/franc6/ics_calendar) to pull calendar from Outlook
* [Afvalbeheer](https://github.com/pippyn/Home-Assistant-Sensor-Afvalbeheer) to get waste reminders (since the official Belgian app is crap)
* [bar-card](https://github.com/custom-cards/bar-card)
* [simple-thermostat](https://github.com/nervetattoo/simple-thermostat)

# Installation
I'm running HAOS as a virtual machine on Proxmox in a 2 core 4GB VM.

On the same proxmox server I also run the following service for HA:
* Postgresql v13
* InfluxDB v2
* Mosquitto MQTT broker