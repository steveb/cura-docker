FROM ubuntu:bionic

RUN apt-get -y update && \
    apt-get -y install software-properties-common && \
    add-apt-repository ppa:thopiekar/cura && \
    apt-get -y update && \
    apt-get -y install cura=1:3.3.1~201806260857~rev3015~pkg252~ubuntu18.04.1

CMD /usr/bin/cura
