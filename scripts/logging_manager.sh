#!/bin/bash
ENV_FILE="$(dirname "$0")/.env"
if [ -f "$ENV_FILE"  ]; then
    export $(grep -v '^#' "$ENV_FILE" | xargs)
else
    echo "Error: .env file not found"
    exit 1
fi

get_logdir() {
    local log_dir
    if [ "${LOG_DIR}" = "prod" ]; then
        log_dir="${prod_log}"
    else
        log_dir="$(test_log)"
    fi

    mkdir -p "$(dirname "$log_dir")"
}
