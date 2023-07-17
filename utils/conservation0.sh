#!/bin/bash

#enables conservation mode
echo 0 | sudo tee /sys/bus/platform/drivers/ideapad_acpi/VPC2004:00/conservation_mode
#sends toast message
notify-send "Conservation Mode Disabled, Battery will charge to 100%"
