 #!/bin/sh
 mongopasswd=`cat mongo-user.pass`
 
 mongosh --port 27017  --authenticationDatabase \
    "admin" -u "ambienceUser" -p $mongopasswd