# первый этап
FROM python:3.8 AS myapp1
WORKDIR /srv/sch/
COPY requirements.txt .
RUN pip install -r requirements.txt
#RUN apt update

# Копируем код из локального контекста в рабочую директорию образа



ENV  FOLDER="data"
WORKDIR /srv/sch/
COPY . .
ENTRYPOINT ["python", "./start.py"]
# Открываем порты
EXPOSE 8003
EXPOSE 8003
# Создаём том для хранения данных
VOLUME /data:/data




CMD gunicorn -w 1 --reload start:app --bind 0.0.0.0:8003
