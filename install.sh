## ANSI colors (FG & BG)
RED="$(printf '\033[31m')"  GREEN="$(printf '\033[32m')"  >
MAGENTA="$(printf '\033[35m')"  CYAN="$(printf '\033[36m')>
REDBG="$(printf '\033[41m')"  GREENBG="$(printf '\033[42m'>
MAGENTABG="$(printf '\033[45m')"  CYANBG="$(printf '\033[4>
RESETBG="$(printf '\e[0m\n')"

${GREEN}[${WHITE}-${GREEN}]${CYAN} Tool Powered By Viraj LR${WHITE}

#!/bin/sh

echo "--upgrading packages"
yes "" | pkg update

echo "-- installing dependancies: golang git debianutils m>
yes "" | pkg install golang git debianutils make

echo "-- downloading cloudflared source"
git clone https://github.com/cloudflare/cloudflared.git -->
cd cloudflared
sed -i 's/linux/android/g' Makefile

echo "-- building and installing cloudflared"
make cloudflared
install cloudflared /data/data/com.termux/files/usr/bin

echo "*** Successfully installed ***"

echo "*** POWERED BY VIRAJ LR ***" 
