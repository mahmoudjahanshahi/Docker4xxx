#!/bin/bash

run="run"
bash="bash"
remove="rm"

name="pt-mahmoud"
image="pt:latest"

#-u $(id -u ${USER}):$(id -g ${USER}) \

if [ "$1" = "$run" ]; then
  docker run --gpus all -it --ipc=host \
	-p 8889:8888 \
	-p 6007:6006 \
	-v /home/mjahansh:/home/mjahansh \
    -v /da0_data/:/da0_data/ \
    -v /da1_data/:/da1_data/ \
    -v /da2_data/:/da2_data/ \
    -v /da3_data/:/da3_data/ \
    -v /da4_data/:/da4_data/ \
    -v /data/:/da6_data/ \
    -v /da7_data/:/da7_data/ \
	-w /home/mjahansh \
	--name "$name" \
	"$image" \
	/bin/bash

elif [ "$1" = "$bash" ]; then
  docker start "$name"
  docker exec -it "$name" /bin/bash

elif [ "$1" = "$remove" ]; then
  docker stop "$name"
  docker rm "$name"

else
  echo "Usage: sh $0 <run / bash / rm>"
fi
