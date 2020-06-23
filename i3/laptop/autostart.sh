#!/usr/bin/env bash

readonly _custom_autostart_programs=(firefox keepassxc evince thunderbird anki "libinput-gestures-setup start")

echo -e "Try to start programs:"
for i in "${_custom_autostart_programs[@]}";do 
  echo -e "\t -> $i"

  # check if the program is already executed
  if [ "$(pgrep $(echo $i | cut -d " " -f1 ))" == "" ];then
    $i &
    if [ $? -eq 0 ];then
      echo -e "\t\t - start succesfull"
    else
      echo -e "\t\t - start succesfull"
    fi

    echo -e "\t\t - at pid $!" 

  else

    echo -e "\t\t - program already running at: $(pgrep $i)"
  fi
done
