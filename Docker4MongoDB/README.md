
# MongoDB with Docker

### Containers
* Current docker container: dbNew
* Previous docker container: dbNew_old (unexpectedly stopped working)
  * Container unexpectedly stopped working, causing other containers using this database to also stop working. 

### Back-ups
* Back-ups location: ```da1: /home/anau/MongoDB/dumps```
* Back-up command: ```docker exec <mongodb container> sh -c 'mongodump --archive' > db.dump```
* Restore command: ```docker exec -i <mongodb container> sh -c 'mongorestore --archive' < db.dump```

### Other 
* Helpful link: https://hub.docker.com/_/mongo

Additional notes:
- If updating to a newer mongo version, the MongoDB Node
