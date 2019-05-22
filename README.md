# Описание сервиса
Веб сервис написан на go, компилирируется в бинарник и билдится в контейнер.

Контнейнер находится в публичном репозитории dockerhub, билдится он автоматически после создания tag в репозитории github (билд проходит минут 5-7)

Деплой приложения осуществлен через helm https://github.com/agl-nn/helm-repo

# Подготовка

Нужно добавить репозиторий командой `helm repo add webapp-repo 'https://agl-nn.github.io/helm-repo/'`

для установки приложения выполнить `helm install webapp webapp-repo/webapp`

для обновления нужно выполнить `helm upgrade webapp webapp-repo/webapp --set=image.tag=release-${tag_number}`

для отката на предыдущую версию выполнить `helm rollback webapp ${revision}`

Номер revision можно посмотреть командой `helm history webapp`

