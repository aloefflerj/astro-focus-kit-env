git clone -b dev git@github.com:aloefflerj/astro-focus-kit-server.git ../astro-focus-kit-server
git clone -b dev git@github.com:aloefflerj/astro-focus-kit-client.git ../astro-focus-kit-client
git clone git@github.com:aloefflerj/astro-focus-kit-chrome-extension.git ../astro-focus-kit-chrome-extension

cp ../astro-focus-kit-client/example.env .env
cp ../astro-focus-kit-chrome-extension/.env.example .env
cp example.env .env

docker-compose build
docker-compose up -d
