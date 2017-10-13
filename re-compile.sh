#!/bin/bash - 
#===============================================================================
#
#          FILE: re-compile.sh
# 
#         USAGE: ./re-compile.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Lixing Song (), lsong2@nd.edu
#  ORGANIZATION: University of Notre Dame
#       CREATED: 04/25/2017 11:07
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error
make
sudo make install
sudo rmmod 8812au
sudo modprobe 8812au
sleep 1
sudo iwconfig wlan1 mode monitor

