# API_YaMDb
https://github.com/MaximoRya/yamdb_final/actions/workflows/yamdb_workflow.yml/badge.svg <br>
Проект развернут на сервере:
http://51.250.70.89/api/v1/categories/
## Описание
Проекmт  YaMDb собирает отзывы пользователей на произведения. Сами произведения в YaMDb не хранятся, здесь нельзя посмотреть фильм или послушать музыку.<br>
Произведения делятся на категории, такие как «Книги», «Фильмы», «Музыка».
Произведению может быть присвоен жанр из списка предустановленных (например, «Сказка», «Рок» или «Артхаус»). Добавлять произведения, категории и жанры может только администратор.<br>
Благодарные или возмущённые пользователи оставляют к произведениям текстовые отзывы и ставят произведению оценку в диапазоне от одного до десяти (целое число); из пользовательских оценок формируется усреднённая оценка произведения — рейтинг (целое число). На одно произведение пользователь может оставить только один отзыв.
Добавлять отзывы, комментарии и ставить оценки могут только аутентифицированные пользователи.
<br><br>

## Технологии
* Python 3.7
* Django 2.2.16
* Django Rest Framework  3.12.4
* Simple JWT 5.2.1
<br> <br>

## Как запустить проект (OS Windows)
### Клонировать репозиторий и перейти в него в командной строке:
```
git clone git@github.com:rock4ts/api_yamdb.git
```
```
cd api_yambd/
```
​
### Создать и активировать виртуальное окружение:
```
python3 -m venv venv
```
```
. venv/bin/activate
```

### Обновить pip и установить зависимости из файла requirements.txt:
```
python3 -m pip install --upgrade pip
```
```
pip install -r requirements.txt
```

### Cоздать и выполнить миграции:
```
python manage.py makemigrations
```
```
python manage.py migrate
```

### Запустить проект:
```
python3 manage.py runserver
```
<br> <br>

## Ресурсы API YaMDb
- Ресурс auth: аутентификация.
- Ресурс users: пользователи.
- Ресурс titles: произведения, к которым пишут отзывы (определённый фильм, книга или песенка).
- Ресурс categories: категории (типы) произведений («Фильмы», «Книги», «Музыка»).
- Ресурс genres: жанры произведений. Одно произведение может быть привязано к нескольким жанрам.
- Ресурс reviews: отзывы на произведения. Отзыв привязан к определённому произведению.
- Ресурс comments: комментарии к отзывам. Комментарий привязан к определённому отзыву.
<br> <br>

## Детальная информация об эндпоинтах и правах доступа к API проекта доступна по ссылке (после запуска проекта):
```
http://127.0.0.1:8000/redoc/
```
<br>

### Примечание:
В проекте предусмотрена команда автоматического заполнения таблиц данными одноименных csv файлов:
```
python3 manage.py populate_reviews --path .../table_name.csv
```
Имя файла допускается как в единственном, так и множественном числе.
