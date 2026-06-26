#!/bin/bash
source "$(dirname "$0")/logging_manager.sh"
source "$(dirname "$0")/input_num.sh"

main() {
	get_logdir

    inputnum >> "$log_dir"
}
main
