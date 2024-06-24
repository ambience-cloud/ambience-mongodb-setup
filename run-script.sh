 #!/bin/bash
mongopasswd=`cat mongo-root.pass`

mongosh --port 27017 --authenticationDatabase \
    "admin" -u "root" -p $mongopasswd < $1