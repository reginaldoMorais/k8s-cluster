#!/bin/bash

printKubeContext() {
  context=$(kubectl config current-context)
  echo -e "\e[90m                               ${context}                             \e[0m"
}

printAppTitle() {
  echo -e "\n\e[34m============================================================================\e[0m"
    echo -e "\e[1;40m                                                                            \e[0m"
    echo -e "\e[1;40;33m                                   Kubernets                                \e[0m"
    echo -e "\e[40;90m                               Reginaldo Morais                             \e[0m"
    echo -e "\e[1;40m                                                                            \e[0m"
    echo -e "\e[34m============================================================================\e[0m"
    printKubeContext
}

printCloseApp() {
  echo -e "\n\n  \e[40;33m ============================================================================ \e[0m"
      echo -e "  \e[1;40m                            Kubernets Launcher \e[33mDONE!                          \e[0m"
      echo -e "  \e[1;40m                                   Thank you!                                 \e[0m"
      echo -e "  \e[40;33m ============================================================================ \e[0m"
}

printOptionNotFound() {
  echo -e "\e[31m  Invalid Option!\e[0m"
  echo -e "\n  Return to menu..."
}

printBreadcrumb() {
  breadcrumb=""

  if [ -n "$1" ]
  then
    breadcrumb="$breadcrumb$1"
  fi

  if [ -n "$2" ]
  then
    breadcrumb="$breadcrumb > $2"
  fi

  if [ -n "$3" ]
  then
    breadcrumb="$breadcrumb > $3"
  fi

  if [ -n "$4" ]
  then
    breadcrumb="$breadcrumb > $4"
  fi

  echo -e "\e[3;90m$breadcrumb\e[0m"
}
