docker run -it \
  --name firefox-esr \
  --env="DISPLAY" \
  --env="QT_X11_NO_MITSHM=1" \
  --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
  -d firefox-esr  \
&& docker stop firefox-esr \
&& export containerId=$(docker ps -l -q) \
&& xhost +local:`docker inspect --format='{{ .Config.Hostname }}' $containerId` \
&& docker start $containerId
