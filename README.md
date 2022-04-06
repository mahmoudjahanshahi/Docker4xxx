# Docker4xxx

## Overview
- Pytorch: Docker4pt
- Tensorflow: Docker4tensorflow_gpu

## Usage
For each environment cd to the directory, then do the build and run. For example, for the Pytorch environment:
```
cd Docker4pt
bash build.sh
bash docker_run.sh run
```
To run jupyter notebook and tensorboard:
Ports 8888 and 6006 are default ports for running Jupyter notebook and tensorboard.

- Jupyter-notebook: 
```
jupyter-notebook --allow-root --port 8888 --ip=0.0.0.0 --no-browser
```

- Jupyter-lab (Recommended): 
```
jupyter-lab --allow-root --port 8888 --ip=0.0.0.0 --no-browser
```

For Jupyter-notebook and Jupyter-lab, multiple people could use the same session, simply run the following to get the token for the token. 
```
jupyter server list
```

- Tensorboard: 
```
tensorboard --logdir <dir to keep the logs> --host 0.0.0.0 --port 6006
```


## Notes
 - You may add additional packages to the DockerFile
 - For permission purposes, you need to add your uid to the Dockerfile as follows (note to use your own netid and uid):
```
RUN echo "zyang37:x:3944:" >> /etc/group
RUN echo "zyang37:x:26388:3944:Zhenning Yang,620,,:/home/zyang37:/bin/bash" >> /etc/passwd
```
