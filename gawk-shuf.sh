#!/bin/bash
## gawk-shuf
## version 0.0.1 - initial
##################################################
gawk-shuf() {
  gawk -v random=${RANDOM} '
function randInt() {
  return int(rand()*1000)
}
function case_numeric_compare(i1, v1, i2, v2, l, r) {
  l = int(v1)
  r = int(v2)
  if(l<r) return -1
  else if(l==r) return 0
  else return 1
}
BEGIN {
  count=1
  srand(random)
}
{
  rank[count]=randInt()
  line[count]=$(0)
  count++
}
END {
  asorti(rank,order,"case_numeric_compare")
  for(i=0;i<count;i++) {
    print line[order[i]]
  }
}
' -
}
##################################################
if [ ${#} -eq 0 ] 
then
 true
else
 exit 1 # wrong args
fi
##################################################
gawk-shuf
##################################################
## generated by create-stub2.sh v0.1.2
## on Sun, 17 Nov 2019 20:47:21 +0900
## see <https://github.com/temptemp3/sh2>
##################################################