
# создаем докер образ с именем myapp1 /

docker build -t myapp01 .
docker run --name myapp01 -e FOLDER=/data -v data:/data -p 8003:8003 myapp01
:latest (for test)

docker run --name app01 - d --restart=unless-stopped -e FOLDER=/data -v /data:/data -p 8003:8003 myapp01:latest ( for run)

