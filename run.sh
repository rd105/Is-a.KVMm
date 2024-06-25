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
printf "${PURPLE}██╗███████╗       █████╗    ██╗  ██╗██╗   ██╗███╗   ███╗${NC}"
printf "${PURPLE}██║██╔════╝      ██╔══██╗   ██║ ██╔╝██║   ██║████╗ ████║${NC}"
printf "${PURPLE}██║███████╗█████╗███████║   █████╔╝ ██║   ██║██╔████╔██║${NC}"
printf "${PURPLE}██║╚════██║╚════╝██╔══██║   ██╔═██╗ ╚██╗ ██╔╝██║╚██╔╝██║${NC}"
printf "${PURPLE}██║███████║      ██║  ██║██╗██║  ██╗ ╚████╔╝ ██║ ╚═╝ ██║${NC}"
printf "${PURPLE}╚═╝╚══════╝      ╚═╝  ╚═╝╚═╝╚═╝  ╚═╝  ╚═══╝  ╚═╝     ╚═╝${NC}"
printf "${PURPLE}                                                        ${NC}"
printf "                                                                                               \n"
printf "root@instance:${DIR}#                                                                             \n"

run_cmd() {
    read -p "root@instance:$DIR# " CMD
    eval "$CMD"

    # Update DIR after executing command
    DIR=$PWD
    if [ "$PWD" = "/root"* ]; then
        DIR="~${PWD#/root}"
    fi
    
    printf "root@instance:$DIR# \n"
    run_user_cmd
}

run_user_cmd() {
    read -p "user@instance:$DIR# " CMD2
    eval "$CMD2"

    # Update DIR after executing command
    DIR=$PWD
    if [ "$PWD" = "/root"* ]; then
        DIR="~${PWD#/root}"
    fi
    
    printf "root@instance:$DIR# \n"
    run_cmd
}

run_cmd
