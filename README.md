# Docker4xxx

## Overview
- Pytorch: Docker4pt
- Tensorflow: Docker4tensorflow_gpu

## Usage
```
./build
bash docker_run.sh run
```

## Other
Inside the container
- Two active ports: 8888 and 6006 (when running Jupiter notebook and tensorboard, can use their default ports inside the container)
- NOTE: Just run tensorboard and Jupiter notebook on their default port, and will be redirected (see **outside the container**)

Outside the container
- Redirect to ports 8888 and 8889 for Jupiter notebook
- Redirect to ports 6006 and 6007 for tensorboard