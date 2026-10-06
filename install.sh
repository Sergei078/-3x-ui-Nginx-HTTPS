#!/bin/bash
set -e

# Ввод домена
read -rp "Введите домен или поддомен: " DOMAIN

# Проверка, что не пусто
if [[ -z "$DOMAIN" ]]; then
    echo "Ошибка: домен не задан."
    exit 1
fi

# 1. Обновление
apt update && apt upgrade -y

# 2. Nginx (просто установка)
apt install -y nginx

# 3. Certbot
apt install -y certbot python3-certbot-nginx

# 4. Сертификат
certbot --nginx -d "$DOMAIN"

# 5. 3x-ui
bash <(curl -Ls https://raw.githubusercontent.com/mhsanaei/3x-ui/master/install.sh)