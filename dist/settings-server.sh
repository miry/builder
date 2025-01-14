#!/bin/sh

PI_OS="http://downloads.raspberrypi.org/raspbian_lite/images/raspbian_lite-2019-04-09/2019-04-08-raspbian-stretch-lite.zip"
PI_USERNAME="miry"
PI_PASSWORD="investigate"
PI_PASSWORD_LENGTH="16"
PI_WIFI_SSID="SchoenhausHH4.OGmili"
PI_WIFI_PASS="10589089334942262689"
PI_DNS_ADDRESS="192.168.178.1 1.1.1.1 1.0.0.1"
PI_INSTALL_DOCKER="true"
PI_SSH_KEY="/ssh-keys/k3s.pub"

PI_INSTALL_K3S_SEVER="true"
PI_HOSTNAME="k3s-server"
PI_IP_ADDRESS_RANGE_START="192.168.178.100"
PI_IP_ADDRESS_RANGE_END="192.168.178.100"

K3S_CLUSTER_SECRET="10589089334942262689"
K3S_URL="https://192.168.178.100:6443/"
