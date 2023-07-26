#/bin/sh

# This script handles events relating to monitor activity such as what to do when a Monitor powers on/off.

isPlugged=$3

if [ "$isPlugged" == 'plug' ]; then
  /usr/local/bin/monitor-hotplug.sh
  $isPlugged >> /tmp/plugged.txt
fi
