i=13344
date=$(date +%s)
while IFS='' read -r line || [[ -n "$line" ]]; do
  plist+="{on=1;replace=\"$line\";with=\"$line\";},"
  sql+="INSERT INTO 'ZUSERDICTIONARYENTRY' VALUES($((++i)),1,1,0,0,0,0,$date,NULL,NULL,NULL,NULL,NULL,\"$line\",\"$line\",NULL);"
done < "$1"
sqlite3 ~/Library/Dictionaries/CoreDataUbiquitySupport/$USER~*/UserDictionary/*/store/UserDictionary.db "delete from ZUSERDICTIONARYENTRY;$sql"
defaults write -g NSUserDictionaryReplacementItems "(${plist%?})"