# Описание сервиса
Для работы сервиса должен быть установлен и настроен kubernetes и helm

Веб сервис написан на go, компилирируется в бинарник и билдится в контейнер.

Контнейнер находится в публичном репозитории dockerhub, билдится он автоматически после создания tag в репозитории github https://github.com/agl-nn/webapp (билд проходит минут 5-7)

Деплой приложения осуществлен через helm адрес репозитория https://github.com/agl-nn/helm-repo

После выкладки сервис доступен на ${ip-minicube}:30010

# Подготовка

Скопировать helm репозиторий командой `git clone git@github.com:agl-nn/helm-repo.git`

# Установка

Для установки приложения выполнить `helm install webapp helm-repo/webapp`

# Обновление

Чтобы выполнить обновление сервиса нужно в helm-repo/values.yaml прописать нужную версию tag для image, например release-0.11

выполнить `helm upgrade  --version 0.11 webapp helm-repo/webapp -f webapp/values.yaml`

# Откат изменений
 
для отката изменений нужно выполнить `helm rollback webapp ${revision}`

Номер revision можно посмотреть командой `helm history webapp`

