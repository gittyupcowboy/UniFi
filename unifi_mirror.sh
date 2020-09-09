#!/bin/bash

# Tested on UniFi Switch PoE 16 (150W) running the 4.3.20.11298 Firmware.
# Based on johnnylemo's reply to:
# https://community.ui.com/questions/FEATURE-REQUEST-All-To-One-Mirror-on-UniFi-Switches-SPAN-PORT/b710d1bc-735b-4bbd-a87a-343c14ca5ea7
# Mirrors LAN traffic to port 16 (see below) assuming port 1 is your uplink. 
# I believe ports 17&18 are the SFP ports, however I do not have SFP to test with.
# It may show an error for monitor session as it usually persists; you can ignore it.
# You may need to play with the sleep delay depending on your device.
# Adjust ports to match your device. e.g. 4 port device: mirror 2/3 to 4 for LAN traffic (assuming port 1 is your uplink).
# If you aren't connected to a controller, it should survive the reboot. In testing have not needed to specify both Rx and Tx, it does both by default.
# Excute with ssh <username@switchip> 'sh -s' < unifi_mirror.sh

{
echo "enable"
echo "configure"
sleep 1
echo "monitor session 1 destination interface 0/16"
echo "monitor session 1 source interface 0/2"
echo "monitor session 1 source interface 0/3"
echo "monitor session 1 source interface 0/4"
echo "monitor session 1 source interface 0/5"
echo "monitor session 1 source interface 0/6"
echo "monitor session 1 source interface 0/7"
echo "monitor session 1 source interface 0/8"
echo "monitor session 1 source interface 0/9"
echo "monitor session 1 source interface 0/10"
echo "monitor session 1 source interface 0/11"
echo "monitor session 1 source interface 0/12"
echo "monitor session 1 source interface 0/13"
echo "monitor session 1 source interface 0/14"
echo "monitor session 1 source interface 0/15"
echo "monitor session 1 source interface 0/17"
echo "monitor session 1 source interface 0/18"
echo "show monitor session all"
sleep 1
echo "exit"
sleep 1
echo "write memory"
sleep 1
echo "y"
sleep 1
} | telnet localhost