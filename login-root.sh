 #!/bin/sh
mongopasswd=`cat mongo-root.pass`
 
 mongosh --port 27017  --authenticationDatabase \
    "admin" -u "root" -p $mongopasswd