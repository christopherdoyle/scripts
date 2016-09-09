#!/bin/sh
#common_software_checker.sh
#cycles through list of programs and checks they exist

set -e

cmd_list=( gcc git htop less make patch ssh vim )

for jpop in "${cmd_list[@]}"
do
  present="\e[1;31mNO\e[0m"
  if command -v $jpop >/dev/null 2>&1; then
    present="\e[1;32mYES\e[0m"
  fi
  printf '%-7s %b\n' "$jpop:" "$present"
done

