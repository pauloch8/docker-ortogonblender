FROM ubuntu:14.04

 RUN apt-get update 
  RUN apt-get install -y software-properties-common python-software-properties bzip2 
  RUN add-apt-repository ppa:webupd8team/java -y 
  RUN add-apt-repository ppa:jonathonf/firefox-esr -y 
  RUN apt-get update 
  RUN apt-get install -y firefox-esr 
  RUN echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections 
  RUN apt-get install -y oracle-java8-installer 
  RUN echo \nJAVA_HOME="/usr/lib/jvm/java-8-oracle/" >> /etc/environment

COPY entrypoint.sh /root/entrypoint.sh
ENTRYPOINT sh /root/entrypoint.sh
