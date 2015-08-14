#!/bin/bash
# Patch for unwanted DHCP on boot
# Location: /etc/systemd/network/eth0.network
# Explaination: On boot, the device will attempt to send a DHCP request,
# even though netctl (or the user) explicitly stated that a static IP be used.
# Side effects:
# - Unexplained connection failures
# - Dual IP (may cause problems with some router, e.g. the horrible Huawei HG8245 I'm using)
# - Dual MAC addresses

sed -i 's/DHCP=yes/DHCP=no/g' /etc/systemd/network/eth0.network
