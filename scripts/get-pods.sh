#!/bin/bash

start() {
  while true; do
    clear
    echo -e "\n\e[34m============================================================================\e[0m"
    echo -e "\e[1;40m                                                                            \e[0m"
    echo -e "\e[1;40;33m                                   Kubernets                                \e[0m"
    echo -e "\e[40;90m                               Reginaldo Morais                             \e[0m"
    echo -e "\e[1;40m                                                                            \e[0m"
    echo -e "\e[1;103;90m                                   GET PODS                                 \e[0m"
    echo -e "\e[1;40m                                                                            \e[0m"
    echo -e "\e[34m============================================================================\e[0m"
    echo -e "\n"

    kubectl get pods

    sleep 5;
  done
}

start
