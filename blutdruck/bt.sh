#!/usr/bin/env bash
#
#   start : bash bt.sh "schreiben" "24. April 2024" "08:08" "159" "90" "***"
#
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
