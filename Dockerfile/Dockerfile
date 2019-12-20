# Conforme documentação da instalação em:
# http://www.ciceromoraes.com.br/doc/pt_br/OrtogOnBlender/Instalacao_Linux.html#

FROM ubuntu:18.04

RUN echo "======= Instalando as Bibliotecas Necessárias  =====================>" \
&& echo "======= Instala as bibliotecas gerais  ==============================>" \
&& apt-get update \
&& apt-get install -y libgmpxx4ldbl \
&& apt-get install -y libvtk6.3 \
&& apt-get install -y libboost-program-options1.65.1 \
&& apt-get install -y libboost-serialization1.65.1 \
&& apt-get install -y libopencv-calib3d3.2 \
&& apt-get install -y libboost-iostreams1.65.1 \
&& apt-get install -y exiftool \
&& apt-get install -y dcmtk \
&& apt-get install -y vtk-dicom-tools \
&& apt-get install -y imagemagick \
&& apt-get install -y libheif-examples \
&& apt-get install -y python3-pip \
&& apt-get install -y wget \
&& apt-get install -y unzip \
&& apt-get install -y cmake \
&& apt-get clean \
&& rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN echo "======= Instala as bibliotecas de segmentação da face  ===============>" \
&& pip3 install opencv-python \
&& pip3 install dlib \
&& pip3 install imutils

RUN echo "======= Instala as bibliotecas de segmentação da face  ===============>" \
&& cd ~ \
&& mkdir Programs && cd Programs \
&& wget http://www.ciceromoraes.com.br/downloads/OrtogOnBlender/Linux/OrtogOnBlender.zip \
&& unzip OrtogOnBlender.zip \
&& rm OrtogOnBlender.zip

# está dando erro executando a operação abaixo
#RUN echo "=======Caso não apareça o OrtogOnBlender nas abas à esquerda =========>" \
#&& cd ~/Programs/OrtogOnBlender/Blender280/ && rm -Rfv 2.80* \
#&& wget http://www.ciceromoraes.com.br/downloads/OrtogOnBlender/Linux/2.80.zip \
#&& unzip 2.80.zip \
#&& rm 2.80.zip \
#&& cd ~/Programs/OrtogOnBlender/Dicom2Mesh/ && cp libdicom2meshlib.so /usr/lib/


CMD ["/root/Programs/OrtogOnBlender/Blender280/blender"]
