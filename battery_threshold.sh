#!/bin/bash

read -p "What battery threshold you need to limit? : " limit

if [ -z $limit ]
then
        echo "Threshold can not be empty!"
else
        echo $limit | sudo tee /sys/class/power_supply/BAT0/charge_control_end_threshold
        echo "Threshold value is set tO $limit%"
fi
