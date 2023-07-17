#!/bin/bash

#enables conservation mode
echo 1 | sudo tee /sys/bus/platform/drivers/ideapad_acpi/VPC2004:00/conservation_mode
#sends toast message
notify-send "Conservation Mode Enabled, Battery will charge to 60%"
