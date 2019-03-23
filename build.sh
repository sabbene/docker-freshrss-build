git clone https://github.com/FreshRSS/FreshRSS.git
cd FreshRSS/
git pull
docker pull alpine:3.8
docker build --tag freshrss/freshrss -f Docker/Dockerfile .
docker run --name freshrss --restart=always --detach -v freshrss-data:/var/www/FreshRSS/data   -e 'CRON_MIN=4,34' -e TZ=America/Los_Angeles  freshrss/freshrss
