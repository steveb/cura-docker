# Cura packaged as a container from Ubuntu PPA

This image packages [Thomas Pietrowski's](https://launchpad.net/~thopiekar) [cura PPA](https://launchpad.net/~thopiekar/+archive/ubuntu/cura) so that it can be run in an isloated container.

It can be run with the following script:
```
#!/bin/sh
XSOCK=/tmp/.X11-unix
XAUTH=/tmp/.docker.xauth
xauth nlist :0 | sed -e 's/^..../ffff/' | xauth -f $XAUTH nmerge -
docker run -ti -v /etc/passwd:/etc/passwd:ro -v /etc/group:/etc/group:ro -v $HOME:$HOME -v $XSOCK:$XSOCK -v $XAUTH:$XAUTH -e XAUTHORITY=$XAUTH -e DISPLAY --user $UID:$GROUPS docker.io/stevebake/cura-docker
```
