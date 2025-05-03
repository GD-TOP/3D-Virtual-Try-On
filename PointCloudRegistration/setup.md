
xhost +

docker run -it --gpus all --env DISPLAY=$DISPLAY --env="QT_X11_NO_MITSHM=1" -v /tmp/.X11-unix:/tmp/.X11-unix:ro -v 프로젝트폴더:/workspace nvidia/cuda:11.1-cudnn8-devel-ubuntu20.04
