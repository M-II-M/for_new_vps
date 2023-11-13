#!/bin/bash

PASS_BACK=$1 # пароль backend
PASS_FRONT=$2 # пароль frontend

# создание юзеров
useradd  -m -G sudo,docker -s /bin/bash backend && $(echo "backend:${PASS_BACK}" |chpasswd)
useradd  -m -G sudo,docker -s /bin/bash frontend && $(echo "frontend:${PASS_FRONT}" |chpasswd)
