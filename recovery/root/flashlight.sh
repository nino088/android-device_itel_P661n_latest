mkdir /flashlight
ln -s /sys/devices/virtual/camera/flash/rear_flash /flashlight/brightness
echo 1 > /flashlight/brightness
