#!/bin/bash
## true
## version 0.0.2 - using command true in entry
##################################################
declare -f true 1>/dev/null || {
  true() {
   command true
  }
}
##################################################
if [ ${#} -eq 0 ] 
then
 command true
else
 exit 1 # wrong args
fi
##################################################
true
##################################################
## generated by create-stub2.sh v0.1.2
## on Sun, 23 Jun 2019 20:35:44 +0900
## see <https://github.com/temptemp3/sh2>
##################################################
