#!/bin/bash

. ./scripts/printDefault.sh

printPodsMenuTitle() {
  echo -e "\n"
  echo -e "\e[1;34m                                      Pods \e[0m\n"
}

printPodsMenuOptions() {
    echo -e "\n\n\e[36m      1) Get Pods\e[0m"
    echo -e "\e[36m      2) Get Pods by namespace\e[0m"
    echo -e "\e[36m      3) Delete Pod\e[0m"
    echo -e "\e[36m      0) Return to Main menu\e[0m"
    echo -e "\n\e[34m  ========================================================================\e[0m"
}

printGetPods() {
  pods=$(kubectl get pods)
  echo -e "\n\e[97m$pods \e[0m"
}

printGetPodsByNamespace() {
  refreshPodsMenu

  echo -e "\e[97mNamespace: $1 \e[0m"

  if [ -n "$1" ]
  then
    pods=$(kubectl get pods -n $1)
    echo -e "\e[97m$pods \e[0m"
    sleep 5
  else
    echo -e "\e[31m  Yout must set some namespace to get pods!\e[0m"
    sleep 2
  fi
}

deletePod() {
  refreshPodsMenu

  if [ -n "$1" ]
  then
    pod=$(kubectl delete pods $1)
    echo -e "\e[97m$pod \e[0m"
  else
    echo -e "\e[31m  Yout must set some pod to delete!\e[0m"
    sleep 2
  fi
}

refreshPodsMenu() {
  refresh
  printBreadcrumb "main" "pods"
  printPodsMenuTitle
}

podsMenu() {
  x="startPodsMenu"

  while true $x != "startPodsMenu"
  do
    refreshPodsMenu
    printGetPods
    printPodsMenuOptions

    read -p "    Select one option and its params: " x y

    case "$x" in

    1)
      podsMenu $y
    ;;

    2)
      printGetPodsByNamespace $y
    ;;

    3)
      deletePod $y
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
