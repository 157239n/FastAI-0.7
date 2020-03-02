FROM 157239n/basic
RUN apt-get update && apt-get install -y \
    python3-dev \
    python3-pip \
    python-setuptools \
    && yes | pip3 install wheel \
    && yes | pip3 install zipline \
    && yes | pip3 install --upgrade setuptools
RUN yes | pip3 install torchtext==0.2.3
RUN yes | pip3 install fastai==0.7.0
RUN apt-get install -y libsm6 libxext6 libxrender-dev \
    && pip3 install opencv-python
RUN pip3 install scikit-learn==0.21.3
COPY startup /startup
CMD /startup/entry.sh
