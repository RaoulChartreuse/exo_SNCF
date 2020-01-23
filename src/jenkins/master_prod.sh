#!/bin/bash

ssh laurent@10.69.8.77 <<'ENDSSH'
cd /tmp
mkdir tmp-01
cd tmp-01
git clone https://github.com/RaoulChartreuse/exo_SNCF
cd exo_SNCF
src/bash/update_prod.sh
cd /tmp
rm -rf tmp-01
#commands to run on remote host
ENDSSH
