#!/bin/bash

MISSION=$1

if [ -z "$MISSION" ]; then
  echo "Restoring ALL practice files..."
  cp .originals/* practice_files/
  echo "Done."
  exit 0
fi

case $MISSION in
  1)
    cp .originals/mission1_sshd_config.txt practice_files/
    echo "Reset Mission 1."
    ;;
  2)
    cp .originals/mission2_hosts.txt practice_files/
    echo "Reset Mission 2."
    ;;
  3)
    cp .originals/mission3_nginx_config.txt practice_files/
    echo "Reset Mission 3."
    ;;
  *)
    echo "Usage: ./reset.sh [1|2|3] (or empty to reset all)"
    exit 1
    ;;
esac
