#!/bin/bash
source "$(dirname "$0")/logging_manager.sh"
source "$(dirname "$0")/input_num.sh"

main() {
    # check log dir and choose one.
    # command: sudo ./main.sh -> test_log
    # command: sudo ENV=prod ./main.sh -> prod_log
	get_logdir
    # execute function and save result to log file.
    #inputnum >> "$log_dir"
    inputnum
}
main
