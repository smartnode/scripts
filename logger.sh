#!/bin/bash

######################### COLORS ##############################################
COLOR_BLACK='\e[0;30m'
COLOR_RED='\e[0;31m'
COLOR_GREEN='\e[0;32m'
COLOR_YELLOW='\e[0;33m'
COLOR_BLUE='\e[0;34m'
COLOR_PURPLE='\e[0;35m'
COLOR_CYAN='\e[0;36m'
COLOR_WHITE='\e[0;37m'
COLOR_RESET='\e[0m'

######################### LOGGING #############################################
ERROR()
{
    echo -e "${COLOR_RED}[$(date --rfc-3339=seconds)][$(caller)]$*${COLOR_RESET}"
}

DEBUG()
{
    echo -e "${COLOR_GREEN}[$(date --rfc-3339=seconds)][$(caller)]$*${COLOR_RESET}"
}

NOTIFY()
{
    echo -e "${COLOR_YELLOW}[$(date --rfc-3339=seconds)][$(caller)]$*${COLOR_RESET}"
}

ERROR "This is ERROR message"
DEBUG "This is DEBUG message"
NOTIFY "This is NOTIFY message"


