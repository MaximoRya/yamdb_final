FROM python:3.7-slim
WORKDIR /app
COPY requirements.txt .
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
COPY ./ /app
CMD ["python3", "manage.py", "runserver", "0:8000"]
