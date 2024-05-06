#!/usr/bin/env bash
#
#   start : bash  dkv.sh "schreiben" " " " " " " " " " " " " " "
#
if [[ ${1} ==  "lesen" ]]
then
    echo "lesen"
    if [[ ${2} ==  "all" ]] 
    then
       echo "psql -U mspruck -d ms01 -c \"select * from dkv;\""
       psql -U mspruck -d ms01 -c "select * from dkv"; 
    else
        echo "psql -U mspruck -d ms01 -c \"select * from dkv where datum ='${2}';\"" 
        psql -U mspruck -d ms01 -c "select * from dkv where rechnungs_datum='$2'"; 
    fi
else
    echo "schreiben" 
    echo "INSERT INTO dkv (rechnungs_datum, rechnungs_steller, leistungs_datum, rezept_datum, leistungs_geber, leistung, betrag, dkv_abrechnungs_datum, dkv_abrechnungs_betrag) Values ('${2}', '${3}', '${4}', '${5}', '${6}', ${7}, ${8}, ${9});"
    psql -U mspruck -d ms01 -c "INSERT INTO dkv (rechnungs_datum, rechnungs_steller, leistungs_datum, rezept_datum, leistungs_geber, leistung, betrag, dkv_abrechnungs_datum, dkv_abrechnungs_betrag) Values ('${2}', '${3}', '${4}', '${5}', '${6}', '${7}', '${8}', '${9}', '${10}' );"
fi
