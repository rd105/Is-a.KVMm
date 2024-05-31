#!/bin/sh
PURPLE='\033[0;35m'
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NC='\033[0m'


DIR=$PWD
if [ "$PWD" = "/root"* ]; then
    DIR="~${PWD#/root}"
fi

printf "\033c"
printf "${PURPLE}   ____                   __ __ _   __ __  ___${NC}"
printf "${PURPLE}  /  _/___ ____ ___ _    / //_/| | / //  |/  /${NC}"
printf "${PURPLE} _/ / (_-</___// _ `/_  / ,<   | |/ // /|_/ / ${NC}"
printf "${PURPLE}/___//___/     \_,_/(_)/_/|_|  |___//_/  /_/  ${NC}"
printf "${PURPLE}                                              ${NC}"
printf "                                                                                               \n"
printf "root@is-a.KVM:${DIR}#                                                                             \n"

run_cmd() {
    read -p "root@is-a.KVM:$DIR# " CMD
    eval "$CMD"

    # Update DIR after executing command
    DIR=$PWD
    if [ "$PWD" = "/root"* ]; then
        DIR="~${PWD#/root}"
    fi
    
    printf "root@is-a.KVM:$DIR# \n"
    run_user_cmd
}

run_user_cmd() {
    read -p "user@is-a.KVM:$DIR# " CMD2
    eval "$CMD2"

    # Update DIR after executing command
    DIR=$PWD
    if [ "$PWD" = "/root"* ]; then
        DIR="~${PWD#/root}"
    fi
    
    printf "root@is-a.KVM:$DIR# \n"
    run_cmd
}

run_cmd
