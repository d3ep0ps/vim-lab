#!/bin/bash

MISSION=$1

RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color

case $MISSION in
  1)
    if grep -q "^Port 5757" practice_files/mission1_sshd_config.txt; then
      echo -e "${GREEN}✅ Mission 1 Complete! SSH Port is set to 5757.${NC}"
      exit 0
    else
      echo -e "${RED}❌ Mission 1 Failed. Port 5757 not found or commented out.${NC}"
      exit 1
    fi
    ;;
  2)
    if ! grep -q "192.168.1.50 old-server.local" practice_files/mission2_hosts.txt && \
       grep -A 1 "127.0.0.1 localhost" practice_files/mission2_hosts.txt | grep -q "10.0.0.10 test-server"; then
      echo -e "${GREEN}✅ Mission 2 Complete! Hosts file cleaned up.${NC}"
      exit 0
    else
      echo -e "${RED}❌ Mission 2 Failed. Check if old-server is deleted and test-server is moved correctly.${NC}"
      exit 1
    fi
    ;;
  3)
    if ! grep -q "old-app.com" practice_files/mission3_nginx_config.txt && \
       grep -q "new-app.d3ep0ps.com" practice_files/mission3_nginx_config.txt; then
       echo -e "${GREEN}✅ Mission 3 Complete! All instances replaced.${NC}"
       exit 0
    else
       echo -e "${RED}❌ Mission 3 Failed. Found 'old-app.com' or missing 'new-app.d3ep0ps.com'.${NC}"
       exit 1
    fi
    ;;
  *)
    echo "Usage: ./check.sh [1|2|3]"
    exit 1
    ;;
esac
