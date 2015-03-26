#!/bin/bash

cd /Users/geoffe02/Documents/Git_Repositories/SOA_MapGame
cd Map_Service
rake db:drop && rake db:create && rake db:migrate
echo "Map Service Reset"
cd ../Encounter_Service/
rake db:drop && rake db:create && rake db:migrate
echo "Encounter Service Reset... Done"
