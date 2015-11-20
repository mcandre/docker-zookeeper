FROM java:7
MAINTAINER Andrew Pennebaker <andrew.pennebaker@gmail.com>
ENV ZK_HOME /zookeeper-3.5.0-alpha
ENV PATH $PATH:$ZK_HOME/bin
ADD http://apache.mirrors.lucidnetworks.net/zookeeper/zookeeper-3.5.0-alpha/zookeeper-3.5.0-alpha.tar.gz /zookeeper-3.5.0-alpha.tar.gz
RUN tar xvf /zookeeper-3.5.0-alpha.tar.gz && \
    cp /zookeeper-3.5.0-alpha/conf/zoo_sample.cfg /zookeeper-3.5.0-alpha/conf/zoo.cfg
EXPOSE 2181 2888 3888
ENTRYPOINT /zookeeper-3.5.0-alpha/bin/zkServer.sh start-foreground
