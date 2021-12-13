#!/bin/bash

. ./scripts/printDefault.sh

printServiceMenuTitle() {
  echo -e "\n"
  echo -e "\e[1;34m                                   Service \e[0m\n"
}

printServiceMenuOptions() {
    echo -e "\e[36m      1) Return to Services menu\e[0m"
    echo -e "\e[36m      0) Return to Main menu\e[0m"
    echo -e "\n\e[34m  ========================================================================\e[0m"
}

serviceMenu() {
  x="startServicesMenu"

  while true $x != "startServicesMenu"
  do
    refresh
    printBreadcrumb "main" "services" "service"
    printServiceMenuTitle
    printServiceMenuOptions

    read -p "    Select one option: " x

    case "$x" in

    1)
      servicesMenu
    ;;

    0)
      mainMenu
    ;;

    *)
        refresh
        printOptionNotFound
        sleep 3
    ;;

  esac
  done
}
