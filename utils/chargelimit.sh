#!/bin/bash

# Level to start battery charging.
echo "75" | sudo tee /sys/class/power_supply/BAT0/charge_control_start_threshold
# Level to stop charging
echo "85" | sudo tee /sys/class/power_supply/BAT0/charge_control_end_threshold

