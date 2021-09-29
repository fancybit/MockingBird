FROM centos
LABEL author=fancybit
EXPOSE 8080
WORKDIR /opt/

RUN yum install -y python3.8 git llvm gcc python38-devel libsndfile
RUN git clone https://github.com/babysor/MockingBird.git
RUN pip3 install -r ./MockingBird/requirements.txt
RUN pip3 --default-timeout=600 install torch==1.9.1+cu111 torchvision==0.10.1+cu111 torchaudio==0.9.1 -f https://download.pytorch.org/whl/torch_stable.html

ENTRYPOINT cd MockingBird && python3 web.py
