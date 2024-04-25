#!/usr/bin/env bash

gatekeeper_status=$(spctl --status)

if [[ ${gatekeeper_status} ==  "assessments enabled" ]]
then
    echo "Gatekeeper is enabled do some stuff"
else
    echo "Gatekeeper is disabled do some stuff"
fi


echo $1

if [[ ${1} ==  "lesen" ]]
then
    echo "lesen"
    if [[ ${2} ==  "all" ]] 
    then
       echo "psql -U mspruck -d ms01 -c \"select * from blutdruck;\""
       psql -U mspruck -d ms01 -c "select * from blutdruck"; 
    else
        echo "psql -U mspruck -d ms01 -c \"select * from blutdruck where datum ='${2}';\"" 
        psql -U mspruck -d ms01 -c "select * from blutdruck where datum='$2'"; 
    fi
else
    echo "schreiben" 
    #echo "psql -U mspruck -d ms01 -c \"insert into puiblic.blutdruck (datum, zeit, sys, dia, kommentar) VALUES ('${2}', '${3}', '${4}', '${5}', '${6}');\""
    psql -U mspruck -d ms01 -c "insert into public.blutdruck (datum, zeit, sys, dia, kommentar) VALUES ('${2}', '${3}', '${4}', '${5}', '${6}');"

fi