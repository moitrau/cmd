mkdir repo
cd repo
mkdir usersnjapp
cd usersnjapp
git init
git remote add -f origin https://github.com/moitrau/usersnjapp.git
git pull origin master

cd /root/repo/usersnjapp
docker-compose up -d

docker pull dpage/pgadmin4
docker run -p 80:80  \
    -e 'PGADMIN_DEFAULT_EMAIL=pgadmin' \
    -e 'PGADMIN_DEFAULT_PASSWORD=pgpass' \
    -d dpage/pgadmin4


