#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

echo -e "${BLUE}Welcome to the d3ep0ps Vim Survival Lab!${NC}"
echo "Select a mission to start:"
echo "1) Mission 1: The Basics (Movement & Editing)"
echo "2) Mission 2: Copy, Paste, Delete, and... Panic?"
echo "3) Mission 3: Search and Replace"
echo "q) Quit"

read -p "Enter choice [1-3]: " choice

case $choice in
  1)
    FILE="practice_files/mission1_sshd_config.txt"
    MISSION=1
    ;;
  2)
    FILE="practice_files/mission2_hosts.txt"
    MISSION=2
    ;;
  3)
    FILE="practice_files/mission3_nginx_config.txt"
    MISSION=3
    ;;
  q)
    echo "Goodbye!"
    exit 0
    ;;
  *)
    echo "Invalid choice."
    exit 1
    ;;
esac

echo -e "\nYou chose Mission $MISSION."
read -p "Do you want to reset the file to its original state first? (y/n) " reset_choice
if [[ $reset_choice =~ ^[Yy]$ ]]; then
  ./reset.sh $MISSION
fi

echo -e "\n${BLUE}Opening $FILE in vim... Good luck!${NC}"
read -p "Press Enter to start..."

vi $FILE

echo -e "\n${BLUE}Checking your work...${NC}"
./check.sh $MISSION
