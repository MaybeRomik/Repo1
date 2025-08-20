#!/bin/bash

# Название проекта
PROJECT_NAME="git-test-project"

# URL твоего репозитория 
REPO_URL="https://github.com/MaybeRomik/ScriptRepo.git"

# Создание папки
mkdir "$PROJECT_NAME"
cd "$PROJECT_NAME" || exit

# Инициализация Git
git init

# Создание файла
echo "Hello, Git!" > test.txt

# Добавление файла в Git
git add .

# Коммит
git commit -m "Add first commit - test.txt"

# Переименование ветки в main (важно для GitHub)
git branch -M main

# Подключение удалённого репозитория
git remote add origin "https://github.com/MaybeRomik/ScriptRepo.git"

# Отправка в удалённый репозиторий
git push -u origin main

echo "✅ Проект '$PROJECT_NAME' создан и отправлен в GitHub."