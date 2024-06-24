# Overview
This is a project to run a standalone Ambience with MongoDB.  And provides step by step to harden your MongoDB access for Ambience with with minimal roles and priviliges setup to store and retrieve data from MongoDB. 

### Requirements
- Unix environment with bash or sh
- Docker / Docker Desktop at https://www.docker.com/products/docker-desktop/
- Mongo Shell at https://www.mongodb.com/docs/mongodb-shell/


## Getting started
MongoDB need to be create first follow that you can run Ambience from the script. 

Create the password files as 
- mongo-root.pass for MongoDB root user with your password
- mongo-user.pass for MongoDB service user with your password
- You need to update createServiceUser.js user password same as mongo-user.pass

### Launch MongoDB 

Run script to start MongoDB to start the database
```
./run-mongodb.sh
```

This create a MongoDB docker container running on default port 27017 with a persistance volume, eliixr-mongo, for testing.

To reset the test, you need to remove the volume.  

## Setup Database, Service User and roles

### Set up Ambience Databases
Run Script
```
./run-script.sh createDB.js
```
This will create Ambience logical databases as ambience, ambience-logs, ambience-temp and eno. 

You can list the databases created as 
```
./run-script.sh listDB.js
```

### Set up Ambience Custom role 
Run Script
```
./run-script.sh createRolesPrivileges.js
```

This create a custom ambience roles to allow collmod action on ambience database and readWrite roles on the ambience databases and eno. 

You view the created roles by running this script 

```
./run-script.sh listRoles.js
```

### Set up Ambience Service user 
Run Script
```
./run-script.sh createServiceUser.js
```

This create a user, ambienceUser, who has only access to the Ambience databases. 

You can test the user and list the database by call the script

```
./test-created-serviceUser.sh
```

### Launch Ambience to connect to database
Run ambience docker container using the 
```
./run-ambience.sh 
```
Ambience is running at port 1740

You can use a browser to view by entering http://localhost:1740


## Clean up
To clean docker containers and volumes you 
can run 
```
./run-cleanup.sh
```


## References

- https://www.mongodb.com/docs/v3.0/tutorial/manage-users-and-roles/
- https://docs.elixirtech.com/Ambience/2024.0/index.html