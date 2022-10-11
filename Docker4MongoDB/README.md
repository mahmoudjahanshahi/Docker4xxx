
# MongoDB with Docker

### Containers
Current docker container: dbNew
Previous docker container: dbNew_old (unexpectedly stopped working) 

### Back-ups
* Back-ups location: ```da1: /home/anau/MongoDB/dumps```
* Back-up command: ```docker exec [container_id] sh -c 'exec mongodump -d mean-dev --archive' > [date].dump```


