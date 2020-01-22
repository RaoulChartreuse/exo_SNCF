#!/bin/bash

docker pull laurentmorin/exo_sncf_db -a
docker pull laurentmorin/exo_sncf_httpdserver -a

cd src/k8s/
kustomize edit set image laurentmorin/exo_sncf_db:$(git log -n 1 --pretty=format:"%H")
kustomize edit set image laurentmorin/exo_sncf_httpdserver:$(git log -n 1 --pretty=format:"%H")

kustomize build . | sudo kubectl apply -f -
cd ../..
