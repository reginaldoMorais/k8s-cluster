#!/bin/bash

. ./scripts/printDefault.sh
. ./scripts/service.sh

printServicesMenuTitle() {
  echo -e "\n"
  echo -e "\e[1;34m                                   Services \e[0m\n"
}

printServicesMenuOptions() {
    echo -e "\n\n\e[36m      1) Service\e[0m"
    echo -e "\e[36m      0) Return to Main menu\e[0m"
    echo -e "\n\e[34m  ========================================================================\e[0m"
}

printGetServices() {
  kubectl get services
}

servicesMenu() {
  x="startServicesMenu"

  while true $x != "startServicesMenu"
  do
    refresh
    printBreadcrumb "main" "services"
    printServicesMenuTitle
    printGetServices
    printServicesMenuOptions

    read -p "    Select one option: " x

    case "$x" in

    1)
      serviceMenu
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
