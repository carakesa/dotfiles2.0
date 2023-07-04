#!/bin/sh

killall monitor-sensor
while inotifywait -e modify /dev/shm/sensor.log; do

ORIENTATION=$(tail /dev/shm/sensor.log | grep 'orientation' | tail -1 | grep -oE '[^ ]+$')

case "$ORIENTATION" in
normal)
xrandr -o normal
xinput set-prop "Wacom HID 4831 Finger touch" --type=float "Coordinate Transformation Matrix" 1 0 0 0 1 0 0 0 1
xinput set-prop "Wacom HID 4831 Pen stylus" --type=float "Coordinate Transformation Matrix" 1 0 0 0 1 0 0 0 1
xinput set-prop "Wacom HID 4831 Pen eraser" --type=float "Coordinate Transformation Matrix" 1 0 0 0 1 0 0 0 1
xinput set-prop "Wacom HID 4831 DLL077A:01 06CB:76AF Touchpad" --type=float "Coordinate Transformation Matrix" 1 0 0 0 1 0 0 0 1
xinput set-prop "Wacom HID 4831 DLL077A:01 06CB:76AF Mouse" --type=float "Coordinate Transformation Matrix" 1 0 0 0 1 0 0 0 1;;
right-up)
xrandr -o right
xinput set-prop "Wacom HID 4831 Finger touch" --type=float "Coordinate Transformation Matrix" 0 1 0 -1 0 1 0 0 1
xinput set-prop "Wacom HID 4831 Pen stylus" --type=float "Coordinate Transformation Matrix" 0 1 0 -1 0 1 0 0 1
xinput set-prop "Wacom HID 4831 Pen eraser" --type=float "Coordinate Transformation Matrix" 0 1 0 -1 0 1 0 0 1
xinput set-prop "Wacom HID 4831 DLL077A:01 06CB:76AF Touchpad" --type=float "Coordinate Transformation Matrix" 0 1 0 -1 0 1 0 0 1
xinput set-prop "Wacom HID 4831 DLL077A:01 06CB:76AF Mouse" --type=float "Coordinate Transformation Matrix" 0 1 0 -1 0 1 0 0 1;;
left-up)
xrandr -o left
xinput set-prop "Wacom HID 4831 Finger touch" --type=float "Coordinate Transformation Matrix" 0 -1 1 1 0 0 0 0 1
xinput set-prop "Wacom HID 4831 Pen stylus" --type=float "Coordinate Transformation Matrix" 0 -1 1 1 0 0 0 0 1
xinput set-prop "Wacom HID 4831 Pen eraser" --type=float "Coordinate Transformation Matrix" 0 -1 1 1 0 0 0 0 1
xinput set-prop "Wacom HID 4831 DLL077A:01 06CB:76AF Touchpad" --type=float "Coordinate Transformation Matrix" 0 -1 1 1 0 0 0 0 1
xinput set-prop "Wacom HID 4831 DLL077A:01 06CB:76AF Mouse" --type=float "Coordinate Transformation Matrix" 0 -1 1 1 0 0 0 0 1;;
bottom-up)
xrandr -o inverted
xinput set-prop "Wacom HID 4831 Finger touch" --type=float "Coordinate Transformation Matrix" -1 0 1 0 -1 1 0 0 1
xinput set-prop "Wacom HID 4831 Finger stylus" --type=float "Coordinate Transformation Matrix" -1 0 1 0 -1 1 0 0 1
xinput set-prop "Wacom HID 4831 Finger eraser" --type=float "Coordinate Transformation Matrix" -1 0 1 0 -1 1 0 0 1
xinput set-prop "Wacom HID 4831 DLL077A:01 06CB:76AF Touchpad" --type=float "Coordinate Transformation Matrix" -1 0 1 0 -1 1 0 0 1
xinput set-prop "Wacom HID 4831 DLL077A:01 06CB:76AF Mouse" --type=float "Coordinate Transformation Matrix" -1 0 1 0 -1 1 0 0 1;;
esac
done
