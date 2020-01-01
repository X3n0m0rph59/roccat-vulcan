#!/bin/bash

USER=user
USER_ID=1000

/usr/bin/sudo DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/$USER_ID/bus -u $USER /usr/bin/systemctl --user restart roccat-vulcan.service
exit 0
