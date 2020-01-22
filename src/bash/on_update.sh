#!/bin/bash
docker login -u laurentmorin --password-stdin <  ~/.dockpass

docker tag exo_sncf_httpdserver laurentmorin/exo_sncf_httpdserver:2
docker push laurentmorin/exo_sncf_httpdserver:2

docker tag exo_sncf_db laurentmorin/exo_sncf_db:2
docker push laurentmorin/exo_sncf_db:2


#docker pull laurentmorin/exo_sncf_db
#docker pull laurentmorin/exo_sncf_httpdserver

