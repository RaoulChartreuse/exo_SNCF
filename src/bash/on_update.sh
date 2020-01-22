#!/bin/bash
docker login -u laurentmorin --password-stdin <  ~/.dockpass

docker tag exo_sncf_httpdserver laurentmorin/exo_sncf_httpdserver:3
docker push laurentmorin/exo_sncf_httpdserver:3

docker tag exo_sncf_db laurentmorin/exo_sncf_db:3
docker push laurentmorin/exo_sncf_db:3


#docker pull laurentmorin/exo_sncf_db
#docker pull laurentmorin/exo_sncf_httpdserver

