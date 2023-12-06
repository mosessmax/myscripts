#!/bin/bash

colors=($tput setaf 1 $tput setaf 2 $tput setaf 3 $tput setaf 4 $tput setaf 5 $tput setaf 6 $tput setaf 7 $tput setaf 8 $tput setaf 9 $tput setaf 10 $tput setaf 11 $tput setaf 12 $tput setaf 13 $tput setaf 14 $tput setaf 15)

# random silly message
echo "Hello, $USER. I hope you are doing well." | cowsay -f $(ls /usr/share/cowsay/cows/ | shuf -n1) | lolcat -F 0.5