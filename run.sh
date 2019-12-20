docker run -it \
  --name ortogonblender \
  --env="DISPLAY" \
  --env="QT_X11_NO_MITSHM=1" \
  --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
  --volume="/media/pauloh/Untitled/tomo:/tomo" \
  -d ortogonblender:0.1 \
&& docker stop ortogonblender \
&& export containerId=$(docker ps -l -q) \
&& xhost +local:`docker inspect --format='{{ .Config.Hostname }}' $containerId` \
&& docker start $containerId
