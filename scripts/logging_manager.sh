#!/bin/bash
# set log for test and prod-enviroment.
# get target log dir from .env file.

ENV_FILE="$(dirname "$0")/.env"
# get log dir.
# check and export log dir if .env file can be loaded and find log dir.
if [ -f "$ENV_FILE"  ]; then
    export $(grep -v '^#' "$ENV_FILE" | xargs)
else
    echo "Error: .env file not found"
    # if no .env file or log dir find end this script. 
    exit 1
fi
#declaration variable than global.
log_dir=""

get_logdir() {
    # log dir for prod-enviroment.
    # to execute by command "sudo ENV=prod /.main.sh"
    if [ "${ENV}" = "prod" ]; then
        log_dir="${prod_log}"
    else
    # log dir for test-enviroment.
        log_dir="${test_log}"
    fi
    # create log directory for each enviroment if not exit.
    mkdir -p "$(dirname "$log_dir")"
}
