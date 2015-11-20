# docker-zookeeper - a Docker container running a continuous Zookeeper node

# DOCKER HUB

https://registry.hub.docker.com/u/mcandre/docker-zookeeper/

# EXAMPLE

```
$ make
CONTAINER=$(docker run -d -p 2181:2181 -p 2888:2888 -p 3888:3888 mcandre/docker-zookeeper:latest)
docker exec $(CONTAINER) zkCli.sh ls /
Connecting to localhost:2181
2015-11-20 00:19:55,858 [myid:] - INFO  [main:Environment@100] - Client environment:zookeeper.version=3.4.6-1569965, built on 02/20/2014 09:09 GMT
2015-11-20 00:19:55,861 [myid:] - INFO  [main:Environment@100] - Client environment:host.name=30c4aa7c8e36
2015-11-20 00:19:55,861 [myid:] - INFO  [main:Environment@100] - Client environment:java.version=1.7.0_85
2015-11-20 00:19:55,864 [myid:] - INFO  [main:Environment@100] - Client environment:java.vendor=Oracle Corporation
2015-11-20 00:19:55,864 [myid:] - INFO  [main:Environment@100] - Client environment:java.home=/usr/lib/jvm/java-7-openjdk-amd64/jre
2015-11-20 00:19:55,865 [myid:] - INFO  [main:Environment@100] - Client environment:java.class.path=/zookeeper-3.4.6/bin/../build/classes:/zookeeper-3.4.6/bin/../build/lib/*.jar:/zookeeper-3.4.6/bin/../lib/slf4j-log4j12-1.6.1.jar:/zookeeper-3.4.6/bin/../lib/slf4j-api-1.6.1.jar:/zookeeper-3.4.6/bin/../lib/netty-3.7.0.Final.jar:/zookeeper-3.4.6/bin/../lib/log4j-1.2.16.jar:/zookeeper-3.4.6/bin/../lib/jline-0.9.94.jar:/zookeeper-3.4.6/bin/../zookeeper-3.4.6.jar:/zookeeper-3.4.6/bin/../src/java/lib/*.jar:/zookeeper-3.4.6/bin/../conf:
2015-11-20 00:19:55,865 [myid:] - INFO  [main:Environment@100] - Client environment:java.library.path=/usr/java/packages/lib/amd64:/usr/lib/x86_64-linux-gnu/jni:/lib/x86_64-linux-gnu:/usr/lib/x86_64-linux-gnu:/usr/lib/jni:/lib:/usr/lib
2015-11-20 00:19:55,866 [myid:] - INFO  [main:Environment@100] - Client environment:java.io.tmpdir=/tmp
2015-11-20 00:19:55,866 [myid:] - INFO  [main:Environment@100] - Client environment:java.compiler=<NA>
2015-11-20 00:19:55,867 [myid:] - INFO  [main:Environment@100] - Client environment:os.name=Linux
2015-11-20 00:19:55,867 [myid:] - INFO  [main:Environment@100] - Client environment:os.arch=amd64
2015-11-20 00:19:55,868 [myid:] - INFO  [main:Environment@100] - Client environment:os.version=4.0.9-boot2docker
2015-11-20 00:19:55,868 [myid:] - INFO  [main:Environment@100] - Client environment:user.name=root
2015-11-20 00:19:55,868 [myid:] - INFO  [main:Environment@100] - Client environment:user.home=/root
2015-11-20 00:19:55,869 [myid:] - INFO  [main:Environment@100] - Client environment:user.dir=/
2015-11-20 00:19:55,870 [myid:] - INFO  [main:ZooKeeper@438] - Initiating client connection, connectString=localhost:2181 sessionTimeout=30000 watcher=org.apache.zookeeper.ZooKeeperMain$MyWatcher@634fd55e
2015-11-20 00:19:55,897 [myid:] - INFO  [main-SendThread(localhost:2181):ClientCnxn$SendThread@975] - Opening socket connection to server localhost/0:0:0:0:0:0:0:1:2181. Will not attempt to authenticate using SASL (unknown error)
```

# REQUIREMENTS

* [Docker](https://www.docker.com/)

## Optional

* [make](http://www.gnu.org/software/make/)

## Debian/Ubuntu

```
$ sudo apt-get install docker.io build-essential
```

## RedHat/Fedora/CentOS

```
$ sudo yum install docker-io
```

## non-Linux

* [VirtualBox](https://www.virtualbox.org/)
* [Docker Toolbox](https://www.docker.com/toolbox)

### Mac OS X

* [Xcode](http://itunes.apple.com/us/app/xcode/id497799835?ls=1&mt=12)
* [Homebrew](http://brew.sh/)
* [brew-cask](http://caskroom.io/)

```
$ brew cask install dockertoolbox
```

### Windows

* [Chocolatey](https://chocolatey.org/)

```
> chocolatey install virtualbox make
```

* [DockerToolbox-1.8.2c.exe](https://github.com/docker/toolbox/releases/download/v1.8.2c/DockerToolbox-1.8.2c.exe)
