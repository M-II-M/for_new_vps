#!/bin/bash

PASS_BACK=$1 # пароль backend
PASS_FRONT=$2 # пароль frontend

# создание юзеров
useradd backend -m && $(echo "backend:${PASS_BACK}" |chpasswd)
useradd frontend -m && $(echo "frontend:${PASS_FRONT}" |chpasswd)

# добавление в группу sudo
usermod -aG sudo backend
usermod -aG sudo frontend

# добавление в группу docker
usermod -aG docker backend
usermod -aG docker frontend

# добавление в группу docker
usermod -aG docker backend
usermod -aG docker frontend
