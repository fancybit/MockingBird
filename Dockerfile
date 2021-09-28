FROM centos
LABEL author=fancybit
EXPOSE 8080
WORKDIR /opt/

#RUN curl -o /etc/yum.repos.d/CentOS-Base.repo https://mirrors.aliyun.com/repo/Centos-8.repo
#RUN yum makecache
RUN yum install -y python3.8 git llvm gcc python38-devel
RUN git clone https://github.com/babysor/MockingBird.git
RUN pip3 install -r ./MockingBird/requirements.txt

