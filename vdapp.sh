#!/bin/bash
# VDAPP: Virtual Desktop Applications
# Launches a X.org program without any desktop environments

vd_newapp() {
  useradd -m -g vd -s /bin/bash -b /opt/vdapp -d /opt/vdapp/"$2" "$2"
}

vd_delapp() {
  userdel "$2"
}

case "$1" in
  new) vd_newapp ;;
  del) vd_delapp ;;
  start) vd_startapp ;;
  stop) vd_stopapp ;;
  ps) vd_ps ;;
esac
