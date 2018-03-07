#!/bin/bash

if [[ $(pgrep Mail) ]]; then osascript -e 'tell application "Mail" to get the unread count of inbox'; else echo "N/A"; fi