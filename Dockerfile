FROM python:3.7-slim
WORKDIR /app
COPY requirements.txt .
RUN /usr/local/bin/python -m pip install --upgrade pip
RUN pip3 install --no-cache-dir -r requirements.txt
COPY ./ /app
CMD ["python3", "manage.py", "runserver", "0:8000"]
