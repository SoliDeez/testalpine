Код java сервера был взят отсюда https://habr.com/ru/articles/441150/
Для сборки и последующего запуска необходимо использовать команду в терминале 
docker build . -t talpine
docker run -d --rm -p 9020:80 --name testserver talpine
Затем, в браузере обратиться к адресу 127.0.0.0:9020
docker exec -it testserver sh доступ к терминалу контейнера docker exec -it testserver sh
docker kill testserver для остановки контейнера.