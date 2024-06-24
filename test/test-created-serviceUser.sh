 #!/bin/bash
mongopasswd=`cat mongo-user.pass`

dir=$(pwd)/test
echo $dir

echo list database with ambienceUser
mongosh --port 27017 --authenticationDatabase \
    "admin" -u "ambienceUser" -p $mongopasswd < $dir/listDB.js

#test write
echo write records in database with ambienceUser
mongosh --port 27017 --authenticationDatabase \
    "admin" -u "ambienceUser" -p $mongopasswd < $dir/insertRecords.js

 #test read   
echo read records in database with ambienceUser
 mongosh --port 27017 --authenticationDatabase \
    "admin" -u "ambienceUser" -p $mongopasswd < $dir/listRecords.js