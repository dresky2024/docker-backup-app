# Берем за основу легкую версию Linux (Alpine)
FROM alpine:latest

# Устанавливаем bash (в Alpine его нет по умолчанию)
RUN apk add --no-cache bash

# Копируем твой скрипт внутрь контейнера
COPY backup.sh /usr/local/bin/backup.sh

# Даем права на запуск
RUN chmod +x /usr/local/bin/backup.sh

# Команда, которая выполнится при запуске контейнера
CMD ["/usr/local/bin/backup.sh"]

