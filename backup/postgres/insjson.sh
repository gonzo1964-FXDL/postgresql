#
psql -U <username> -d <databasename> -c "INSERT INTO your_table_name(json_column) VALUES ('$json_data');"


exit 0
#
echo "mspruck for psw"
#psql -U mspruck -d ms01 -c "copy(SELECT ROW_TO_JSON(t) FROM (SELECT datum, zeit, sys, dia, kommentar from blutdruck)t) to '/Users/Shared/out.json'"
#su chmod 777 /Users/Shared/out.json
#sudo mv /Users/Shared/out.json ./out.json
#
psql -U mspruck -d ms01 -c "copy(SELECT ROW_TO_JSON(t) FROM (SELECT datum, zeit, sys, dia, kommentar from blutdruck)t) to '/Users/Shared/blutdruck.json'"
#
#
sudo mv /Users/Shared/blutdruck.json ./blutdruck.json
#
psql -U mspruck -d ms01 -c "copy(SELECT ROW_TO_JSON(t) FROM (SELECT * from journalnew)t) to '/Users/Shared/journalnew.json'"
sudo mv /Users/Shared/journalnew.json ./journalnew.json
