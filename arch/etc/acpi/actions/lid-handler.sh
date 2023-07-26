#!/bin/sh

lid_status=$3

if [ "$lid_status" == 'close' ]; then

# If the lid is closed unbind the internal keyboard/touchpad.
#
# To get hardware details run: 
#
# tree /sys/bus/usb/drivers
#
# Then use the device's id and pipe it to the unbind file.
#
# Note: If installed, lsusb -t can also be used to get the device's id.

  sudo sh -c "echo 2-1.8.2 >  /sys/bus/usb/drivers/usb/unbind"

elif [ "$lid_status" == 'open' ]; then

# If the lid is open bind the internal keyboard/touchpad.

  sudo sh -c "echo 2-1.8.2 > /sys/bus/usb/drivers/usb/bind"

fi
