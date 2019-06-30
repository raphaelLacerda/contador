# Contador de Pessoas por gênero


## Rodando Local

docker run --rm -v $(pwd):/usr/share/nginx/html:ro -p 3000:80 nginx


## Buildando e mandando pra produção
docker build . -t contador

docker run --rm -p 3000:80 contador