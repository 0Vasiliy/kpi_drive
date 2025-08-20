# KPI Drive

## Описание проекта

KPI Drive - это веб-приложение для управления ключевыми показателями эффективности (KPI) с микросервисной архитектурой. Проект построен на основе современных технологий и использует Docker для контейнеризации и развертывания.

## Архитектура

Проект состоит из следующих компонентов:

- **Nginx** - веб-сервер и обратный прокси
- **PHP-FPM** - сервер для выполнения PHP-скриптов
- **MariaDB** - реляционная база данных
- **Node.js Backend** - основной сервис приложения
- **Docker** - контейнеризация и оркестрация

## Технологический стек

- **Frontend**: HTML, CSS, JavaScript
- **Backend**: Node.js, PHP
- **База данных**: MariaDB (MySQL)
- **Веб-сервер**: Nginx
- **Контейнеризация**: Docker, Docker Compose
- **Сеть**: Bridge networking для изоляции сервисов

## Структура проекта

```
kpi_drive/
├── .git/                          # Git репозиторий
├── Тест.txt                       # Документация и примеры
├── test.yaml                      # Docker Compose конфигурация
├── command_ubuntu.sh              # Полезные команды для Ubuntu/Linux
├── grep.sh                        # Скрипт для поиска
├── delelet_table_indicator_to_mo_fact.sql  # SQL скрипт для очистки данных

```
### Установка и запуск

1. **Клонирование репозитория**
   ```bash
   git clone <repository-url>
   cd kpi_drive
   ```

2. **Запуск всех сервисов**
   ```bash
   docker-compose up -d
   ```

3. **Проверка статуса**
   ```bash
   docker-compose ps
   ```

4. **Остановка сервисов**
   ```bash
   docker-compose down
   ```


## Управление контейнерами

### Основные команды

```bash
# Запуск всех сервисов в фоновом режиме
docker-compose up -d

# Остановка всех сервисов
docker-compose down

# Перезапуск конкретного сервиса
docker-compose restart nginx

# Просмотр логов
docker-compose logs [service-name]

# Вход в контейнер
docker exec -it [container-name] sh
```

### Полезные команды для Ubuntu/Linux

Проект включает файл `command_ubuntu.sh` с полезными командами для работы в Linux-окружении:

- **Файловая система**: `ls`, `cd`, `mkdir`, `rm`, `cp`, `mv`
- **Просмотр файлов**: `cat`, `less`, `vim`
- **Сеть**: `ping`, `ifconfig`, `traceroute`
- **Система**: `uname -a`, `ps aux`, `top`
- **Права доступа**: `chmod`, `chown`

### SQL скрипты

В проекте есть SQL скрипт `delelet_table_indicator_to_mo_fact.sql` для очистки данных из таблицы `indicator_to_mo_fact`.


