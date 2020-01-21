rm -rf exo_SNCF
git clone https://github.com/RaoulChartreuse/exo_SNCF.git
cd exo_SNCF
whoami
docker-compose down
docker-compose build
docker-compose up -d
