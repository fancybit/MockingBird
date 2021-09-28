FROM centos
LABEL author=fancybit
EXPOSE 8080
WORKDIR /opt/

RUN curl -o /etc/yum.repos.d/CentOS-Base.repo https://mirrors.aliyun.com/repo/Centos-8.repo
RUN yum makecache
RUN yum install -y python3 git
RUN git clone https://gitee.com/fancybit/MockingBird.git

RUN pip3 install -i http://mirrors.aliyun.com/pypi/simple --trusted-host mirrors.aliyun.com -r ./MockingBird/requirements.txt
RUN pip3 install -i https://pypi.tuna.tsinghua.edu.cn/simple --trusted-host mirrors.aliyun.com numba