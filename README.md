# simple-http

```bash
docker build --platform linux/amd64 -t simple-nginx:1.29.2-alpine .

docker tag simple-nginx:1.29.2-alpine <username>/simple-nginx:1.29.2-alpine

docker login docker.io -u <username>

docker push <username>/simple-nginx:1.29.2-alpine
```
