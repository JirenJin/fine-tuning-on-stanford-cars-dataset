#!/bin/bash
# Get accuracy and corresponding iteration times of training
# Usage: get_accuracy.sh 'your_caffe_INFO_logfile'
grep -o -E 'Iteration.*Test|accuracy = .*' $1 | sed '$!N;s/\n/ /' | sort -r -k 6 >> accuracy_`date +"%Y%m%d_%H%M%S"`.log
