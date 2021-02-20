# первый этап
FROM python:3.8 AS myapp1
WORKDIR /srv/app/
COPY requirements.txt .
RUN pip install -r requirements.txt


# Копируем код из локального контекста в рабочую директорию образа
COPY . .
ARG FOLDER=data
#ENTRYPOINT ["python", "./app/my_script.py", "my_var"]
# Открываем порты
EXPOSE 8003
# Создаём том для хранения данных
VOLUME /data:/data


