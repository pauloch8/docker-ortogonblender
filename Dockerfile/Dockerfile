FROM ubuntu:18.04

RUN echo "======= Instalando as Bibliotecas Necessárias  =====================>" 
RUN echo "======= Instala as bibliotecas gerais  =====================>" 
RUN apt-get update 
RUN apt-get install -y libgmpxx4ldbl 
RUN apt-get install -y libvtk6.3 
RUN apt-get install -y libboost-program-options1.65.1 
RUN apt-get install -y libboost-serialization1.65.1 
RUN apt-get install -y libopencv-calib3d3.2  
RUN apt-get install -y libboost-iostreams1.65.1        
RUN apt-get install -y exiftool 
RUN apt-get install -y dcmtk 
RUN apt-get install -y vtk-dicom-tools 
RUN apt-get install -y imagemagick 
RUN apt-get install -y libheif-examples 
RUN apt-get install -y python3-pip
RUN echo "======= Instala as bibliotecas de segmentação da face  =====================>" 
RUN pip3 install opencv-python 
RUN apt-get install -y cmake
RUN pip3 install dlib 
RUN pip3 install imutils 
RUN echo "======= Instala as bibliotecas de segmentação da face  =====================>" 
RUN apt-get install -y wget
RUN apt-get install -y unzip
RUN cd ~ \
 && mkdir Programs && cd Programs \
 && wget http://www.ciceromoraes.com.br/downloads/OrtogOnBlender/Linux/OrtogOnBlender.zip \
 && unzip OrtogOnBlender.zip \
 && rm OrtogOnBlender.zip

#ENTRYPOINT ["./Blender/blender"]
