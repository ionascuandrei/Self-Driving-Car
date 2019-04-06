#!/bin/sh

initAppName=initcamera

echo "Attempting to initialize the camera."
if $initAppName; then
	echo "Camera sucessfully initialised."
else
	echo "Camera error $?. Check the on-board enable switch."
fi

