#!/bin/bash
#docker login -u laurentmorin --password-stdin <  ~/.dockpass

docker tag exo_sncf_httpdserver laurentmorin/exo_sncf_httpdserver:$(git log -n 1 --pretty=format:"%H")
#docker push laurentmorin/exo_sncf_httpdserver:$(git log -n 1 --pretty=format:"%H")

docker tag exo_sncf_db laurentmorin/exo_sncf_db:$(git log -n 1 --pretty=format:"%H")
#docker push laurentmorin/exo_sncf_db:$(git log -n 1 --pretty=format:"%H")


#docker pull laurentmorin/exo_sncf_db
#docker pull laurentmorin/exo_sncf_httpdserver

