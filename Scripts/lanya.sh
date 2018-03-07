#!/bin/bash
echo "M:`ioreg -c BNBMouseDevice | grep '"BatteryPercent" =' | sed 's/[^0-9]*//g'`%"
echo "B:`ioreg -c AppleBluetoothHIDKeyboard | grep '"BatteryPercent" =' | sed 's/[^0-9]*//g'`%"