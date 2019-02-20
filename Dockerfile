# base image
FROM python:3.6

# create shared folder (host directory defined at runtime)
WORKDIR /home
RUN mkdir eval-set

# git clone icr-transcription-pipeline into shared folder
RUN git clone https://github.com/ErisDelaunay/icr-transcription-pipeline.git

# install requirements (python3)
WORKDIR icr-transcription-pipeline
RUN pip install -r requirements.txt

ENTRYPOINT [ "/bin/bash", "-i" ]
