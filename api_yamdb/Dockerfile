FROM python:3.7-slim
WORKDIR /app
COPY requirements.txt .
RUN pip3 install -r ./requirements.txt --no-cache-dir
COPY ../ /app
CMD ["python3", "manage.py", "runserver", "0:8000"]
