# Laravel-blog

## Проект с бэкендом на Laravel и фронтендом на фреймворке Vue.js

## Особенности

- Маршруты API для получения данных с бэкенда
- Авторизация и регистрация с помощью Laravel Sanctum
- Миграции для базы данных и сидеры для начального наполнения

## Технологии

В проекте использованы технологии:

- Laravel - PHP-фреймворк бэкенда
- Vue.js - фреймворк для SPA
- Vite - инструмент для сборки веб-приложений
- Tailwind CSS  - css фреймворк
- Docker

## Установка

Запуск сервисов из docker-compose

```sh
cd laravel-blog
cd blog-api
docker-compose up --d
```

Для сборки фронтенда

```sh
cd laravel-blog
cd blog-client
npm run dev
```
