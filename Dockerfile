############Dockerfile###########
FROM openjdk:8

RUN apt-get update
RUN apt-get install -y wget
RUN apt-get install -y git 
RUN apt-get install -y curl
RUN apt-get install -y vim
RUN apt-get install -y tar
RUN apt-get install -y bzip2

RUN apt-get update
RUN apt-get install -y python3.8-dev
RUN apt-get install -y python3-pip

####
RUN pip3 install gdown==3.12.2
RUN pip3 install rdflib==5.0.0
RUN pip3 install requests==2.24.0
RUN pip3 install pandas==1.1.3
RUN pip3 install elasticsearch==7.11.0
RUN pip3 install pyspark==3.1.1
RUN pip3 install esdk-obs-python==3.20.11 --trusted-host pypi.org
RUN pip3 install Pillow==8.2.0
RUN pip3 install xlrd==1.1.0
RUN pip3 install xlsxwriter==1.4.3

####

RUN pip3 install jupyterlab==3.0.16
RUN pip3 install notebook==6.4.0
RUN pip3 install matplotlib==3.4.2
RUN pip3 install scikit-learn==0.24.2
RUN pip3 install pandasql==0.7.3

RUN pip3 install -U spacy==2.2.4
RUN python3 -m spacy download en_core_web_sm

####

WORKDIR /

####

ENV PYSPARK_PYTHON=/usr/bin/python3
ENV PYSPARK_DRIVER_PYTHON=/usr/bin/python3

####

WORKDIR /

RUN echo "45sdgsg"

CMD jupyter notebook --ip 0.0.0.0 --port 8314 --NotebookApp.token='' --no-browser --allow-root 
############Dockerfile############
