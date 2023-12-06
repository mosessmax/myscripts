#!/bin/bash

colors=($tput setaf 1 $tput setaf 2 $tput setaf 3 $tput setaf 4 $tput setaf 5 $tput setaf 6 $tput setaf 7 $tput setaf 8 $tput setaf 9 $tput setaf 10 $tput setaf 11 $tput setaf 12 $tput setaf 13 $tput setaf 14 $tput setaf 15)

# random silly message
echo "Hello, $USER. I hope you are doing well." | cowsay -f $(ls /usr/share/cowsay/cows/ | shuf -n1) | lolcat -F 0.5

#random message 2
messages=('Woo hoo, I'm a rainbow dog" "I'm colorful and I know it!" "So many colors, mooo!" "I'm a cow. *Rainbow explosion*" "Sometimes I pretend to be a unicorn 🦄"))

message=${messages[$(($RANDOM % ${#messages[@]}))]}


# print message in rainbow color 

for ((i=0; i<${#message}; i++)); do
    echo -n "${colors[$((RANDOM % ${#colors[@]}))]}${message:$i:1}"
done

#reset the color
echo -e "$(tput sgr0)"

#now onto cowsay

echo "$message" | cowsay -f $(ls /usr/share/cowsay/cows | shuf -n1)

