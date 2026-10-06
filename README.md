# Установка 3x-ui + Nginx + HTTPS

## 1. Скачайте файл с репозитория

```bash
git clone https://github.com/Sergei078/-3x-ui-Nginx-HTTPS.git
```

## 2. Запустите установку

```bash
sudo bash install.sh
```

## 3. Введите ваш домен или поддомен

Например: `example.site`

```bash
Введите домен или поддомен: example.site
```

## 4. Введите свою email почту

Или нажмите **Enter**, чтобы пропустить. Например: `user@gmail.com`

```bash
Enter email address or hit Enter to skip.
 (Enter 'c' to cancel): user@gmail.com
```

## 5. Согласитесь с «Условиями использования» Let's Encrypt

```bash
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
Please read the Terms of Service at:
https://letsencrypt.org/documents/LE-SA-v1.8-July-06-2026.pdf
You must agree in order to register with the ACME server. Do you agree?
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
(Y)es/(N)o: y
```

## 6. Выберите базу данных

Например: `sqlite`

```bash
1) SQLite     (default — recommended for < 500 clients)
2) PostgreSQL (recommended for high client counts / many nodes)
Choose [1]: 1
```

## 7. Настройка порта панели

Если хотите автоматически проставить настройки — нажмите **Enter**, если нет — пропишите `y`.

```bash
Would you like to customize the Panel Port settings? (If not, a random port will be applied) [y/n]:
```

## 8. Установка SSL-сертификата

На следующем этапе вам будет предложено установить SSL-сертификат. Так как мы уже выпустили — нажимаем **4**.

```bash
Choose SSL certificate setup method:
1. Let's Encrypt for Domain (90-day validity, auto-renews)
2. Let's Encrypt for IP Address (6-day validity, auto-renews)
3. Custom SSL Certificate (Path to existing files)
4. Skip SSL (advanced — behind reverse proxy / SSH tunnel only)
Note: Options 1 & 2 require port 80 open. Option 3 requires manual paths.
Note: Option 4 serves the panel over plain HTTP — only safe behind nginx/Caddy or an SSH tunnel.
Choose an option (default 2 for IP): 4
```

## 9. Привязка панели к 127.0.0.1

На следующем этапе вам нужно выбрать `y`, чтобы биндить панель через `127.0.0.1`.

```bash
Bind the panel to 127.0.0.1 only? (recommended — forces SSH tunnel / reverse-proxy access) [y/N]: y
```

## 10. Данные о панели

После завершения установки пролистайте вверх и найдите данные о панели — выглядят они вот так:

```bash
═══════════════════════════════════════════
     Panel Installation Complete!         
═══════════════════════════════════════════
Username:    ваш username
Password:    ваш пароль
Port:        ваш порт
WebBasePath: ваш WebBasePath
Database:    ваш путь
Access URL:  http://127.0.0.1:порт/путь
API Token:   ваш токен
═══════════════════════════════════════════
```

> **Самое главное**, чтобы в поле **Access Url** путь начинался с `http://127.0.0.1`

## 11. Проверка

Проверьте, всё ли у вас работает: перейдите по вашему домену или поддомену, который вы ввели в начале. Вам должен открыться сайт с приветствием от **Nginx**.

<img width="566" height="231" alt="image" src="https://github.com/user-attachments/assets/65d99733-667b-407c-8ef2-3f180d39a014" />

В браузере также должно быть установлено безопасное подключение, потому что должен был установиться сертификат.
