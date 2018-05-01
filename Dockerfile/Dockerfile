FROM ubuntu:14.04

 RUN echo "======= Installing gzip and add-apt-repository's package  =====================>" \
  && apt-get update \
  && apt-get install -y software-properties-common python-software-properties bzip2 \
  && echo "======= Adding Java and Firefox-esr's repositories ============================>" \
  && add-apt-repository ppa:webupd8team/java -y \
  && add-apt-repository ppa:jonathonf/firefox-esr -y \
  && echo "======= Installing Firefox-ESR ================================================>" \
  && apt-get update \
  && apt-get install -y firefox-esr \
  && echo "======= Installing Java =======================================================>" \
  && echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections \
  && apt-get install -y oracle-java8-installer \
  && echo \nJAVA_HOME="/usr/lib/jvm/java-8-oracle/" >> /etc/environment \
  && echo "======= Cleaning cache ========================================================>" \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

COPY entrypoint.sh /root/entrypoint.sh
ENTRYPOINT sh /root/entrypoint.sh
