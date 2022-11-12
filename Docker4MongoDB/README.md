
# MongoDB with Docker

### Containers
* Current docker container: dbNew
* Previous docker container: dbNew_old (unexpectedly stopped working)
  * Container unexpectedly stopped working, causing other containers using this database to also stop working. 
  * Back-up: da1:/home/anau/MongoDB/dumps/20221011.dump

### Back-ups
* Back-ups location: ```da1: /home/anau/MongoDB/backups```

### Commands
* Create MongoDB container: ```docker run --name <container_name> -d <mongo_image>```
    * Mongo images that work with our Mean Stack App: d66c68b650ad4
* Back-up command: ```docker exec <mongodb container> sh -c 'mongodump --archive' > db.dump```
* Restore command: ```docker exec -i <mongodb container> sh -c 'mongorestore --archive' < db.dump```

### Other 
* Helpful link: https://hub.docker.com/_/mongo
