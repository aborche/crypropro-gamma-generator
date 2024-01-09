#!/bin/sh

GAMMAID=$(cat /proc/sys/kernel/random/uuid | cut -c 1-8)
GAMMACOUNT=250
RANDOMBLOCKSIZE=2000
TYPEDELAY=15
WINDOWID=$(xdotool getwindowfocus -f)
GENKPIMBINARY=/opt/cprocsp/bin/amd64/genkpim

(trap 'kill 0' INT TERM; sleep 2; while [ 1 ]; do echo 'Iterating'; cat /dev/urandom | tr -dc '[:alpha:]' | fold -w ${1:-$RANDOMBLOCKSIZE} | head -n 1 | xdotool type --delay 15 --window ${WINDOWID} --file -; done; ) &
BGPID=$!

mkdir -p /tmp/genpim/"${GAMMAID}-${GAMMACOUNT}"
${GENKPIMBINARY} ${GAMMACOUNT} ${GAMMAID} /tmp/genpim/"${GAMMAID}-${GAMMACOUNT}"

kill -9 $BGPID
pkill -9 xdotool
xdotool keyup Control_L Control_R Shift_L Shift_R
xdotool key ctrl+u
