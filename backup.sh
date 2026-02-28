#!/bin/bash
# Внутри контейнера мы примонтировали всё в /root/project/data
SOURCE="/root/project/data"
DEST="/root/project/data/backup"

mkdir -p "$DEST"
# Копируем всё из текущей папки в подпапку backup
cp "$SOURCE"/test*.txt "$SOURCE"/test*.yml "$DEST/" 2>/dev/null

echo "Бэкап завершен для пользователя: $USER"
