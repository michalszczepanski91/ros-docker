FROM ros:lunar-robot
LABEL Michal S

USER root
#RUN sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
#RUN apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-key 421C365BD9FF1F717815A3895523BAEEB01FA116
#RUN apt-get update
#RUN apt-get install ros-melodic-desktop-full
COPY run.sh .
COPY . .
CMD ["./run.sh"]
