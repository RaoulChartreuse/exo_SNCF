#!/bin/bash
docker tag exo_sncf_httpdserver laurentmorin/exo_sncf_httpdserver
docker login -u laurentmorin --password-stdin <  ~/.dockpass
docker push laurentmorin/exo_sncf_httpdserver

docker tag exo_sncf_db laurentmorin/exo_sncf_db
docker push laurentmorin/exo_sncf_db


------------
docker pull laurentmorin/exo_sncf_db
docker pull laurentmorin/exo_sncf_httpdserver

