#!/bin/bash

#Keep battery between 95-99%, prevent overcharge
# Level to start battery charging.
echo "95" | sudo tee /sys/class/power_supply/BAT0/charge_control_start_threshold
# Level to stop charging
echo "99" | sudo tee /sys/class/power_supply/BAT0/charge_control_end_threshold

