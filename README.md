# aiogram_webhook_test


Run project with Docker:

1. get address from tuna:
<pre>tuna http 8080</pre>

2. copy data from "Forwarding" and paste it into BASE_WEBHOOK_URL variable in config/secrets.py

3. build docker containers and run project:
<pre>docker compose -f docker-compose.yml -p bot-webhook up -d</pre>


run container with nginx:
<pre>
docker run --rm -d --name webhook-nginx -p 8080:8080 -v ./nginx:/etc/nginx/conf.d nginx
</pre>

clear cache:
<pre>
docker builder prune --all
</pre>
