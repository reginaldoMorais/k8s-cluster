#!/bin/bash

. ./scripts/printDefault.sh
. ./scripts/pods.sh
. ./scripts/services.sh

printMainMenuTitle() {
  echo -e "\n\n"
  echo -e "\e[1;34m                                   Main Menu \e[0m\n"
}

printOptions() {
  echo -e "\e[36m      1) Pods\e[0m"
  echo -e "\e[36m      2) Services\e[0m"
  echo -e "\e[36m      0) Close Launcher\e[0m"
  echo -e "\n\e[34m  ========================================================================\e[0m"
}

refresh() {
  clear
  printAppTitle
}

mainMenu() {
  x="start"

  while true $x != "start"
  do
    refresh
    printMainMenuTitle
    printOptions

    read -p "    Select one option: " x

    case "$x" in

    1)
      podsMenu
    ;;

    2)
      servicesMenu
    ;;

    0)
      refresh
      echo -e "\e[33m    Closing Launcher...\e[0m\n"
      sleep 1
      clear
      printCloseApp
      sleep 3
      clear
      exit
    ;;

    *)
        refresh
        printOptionNotFound
        sleep 3
    ;;

  esac
  done
}

mainMenu
