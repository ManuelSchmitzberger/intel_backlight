#!/bin/bash

folder="/sys/class/backlight/intel_backlight"

max=4882
min=100

currentValue=$(cat $folder/brightness)
addValue=$1
setValue=$(($currentValue + $addValue))

echo $setValue

if (($setValue < 100)); then
 setValue=100;
elif (($setValue > 4000)); then
  setValue=4000;
fi

echo $folder/brightness
echo -n $setValue > $folder/brightness
