# docker-zookeeper - a Docker container running a continuous Zookeeper node

# DOCKER HUB

https://registry.hub.docker.com/u/mcandre/docker-zookeeper/

# EXAMPLE

```
$ make
CONTAINER=$(docker run -d -p 2181:2181 -p 2888:2888 -p 3888:3888 mcandre/docker-zookeeper:3.5.0-alpha)
docker exec $(CONTAINER) zkCli.sh ls /
Connecting to localhost:2181
2015-11-20 00:29:08,611 [myid:] - INFO  [main:Environment@109] - Client environment:zookeeper.version=3.5.0-alpha-1615249, built on 08/01/2014 22:13 GMT
2015-11-20 00:29:08,620 [myid:] - INFO  [main:Environment@109] - Client environment:host.name=eb262679d687
2015-11-20 00:29:08,621 [myid:] - INFO  [main:Environment@109] - Client environment:java.version=1.7.0_85
2015-11-20 00:29:08,631 [myid:] - INFO  [main:Environment@109] - Client environment:java.vendor=Oracle Corporation
2015-11-20 00:29:08,632 [myid:] - INFO  [main:Environment@109] - Client environment:java.home=/usr/lib/jvm/java-7-openjdk-amd64/jre
2015-11-20 00:29:08,632 [myid:] - INFO  [main:Environment@109] - Client environment:java.class.path=/zookeeper-3.5.0-alpha/bin/../build/classes:/zookeeper-3.5.0-alpha/bin/../build/lib/*.jar:/zookeeper-3.5.0-alpha/bin/../lib/slf4j-log4j12-1.7.5.jar:/zookeeper-3.5.0-alpha/bin/../lib/slf4j-api-1.7.5.jar:/zookeeper-3.5.0-alpha/bin/../lib/servlet-api-2.5-20081211.jar:/zookeeper-3.5.0-alpha/bin/../lib/netty-3.7.0.Final.jar:/zookeeper-3.5.0-alpha/bin/../lib/log4j-1.2.16.jar:/zookeeper-3.5.0-alpha/bin/../lib/jline-2.11.jar:/zookeeper-3.5.0-alpha/bin/../lib/jetty-util-6.1.26.jar:/zookeeper-3.5.0-alpha/bin/../lib/jetty-6.1.26.jar:/zookeeper-3.5.0-alpha/bin/../lib/javacc.jar:/zookeeper-3.5.0-alpha/bin/../lib/jackson-mapper-asl-1.9.11.jar:/zookeeper-3.5.0-alpha/bin/../lib/jackson-core-asl-1.9.11.jar:/zookeeper-3.5.0-alpha/bin/../lib/commons-cli-1.2.jar:/zookeeper-3.5.0-alpha/bin/../zookeeper-3.5.0-alpha.jar:/zookeeper-3.5.0-alpha/bin/../src/java/lib/*.jar:/zookeeper-3.5.0-alpha/bin/../conf:
2015-11-20 00:29:08,633 [myid:] - INFO  [main:Environment@109] - Client environment:java.library.path=/usr/java/packages/lib/amd64:/usr/lib/x86_64-linux-gnu/jni:/lib/x86_64-linux-gnu:/usr/lib/x86_64-linux-gnu:/usr/lib/jni:/lib:/usr/lib
2015-11-20 00:29:08,634 [myid:] - INFO  [main:Environment@109] - Client environment:java.io.tmpdir=/tmp
2015-11-20 00:29:08,634 [myid:] - INFO  [main:Environment@109] - Client environment:java.compiler=<NA>
2015-11-20 00:29:08,635 [myid:] - INFO  [main:Environment@109] - Client environment:os.name=Linux
2015-11-20 00:29:08,635 [myid:] - INFO  [main:Environment@109] - Client environment:os.arch=amd64
2015-11-20 00:29:08,636 [myid:] - INFO  [main:Environment@109] - Client environment:os.version=4.0.9-boot2docker
2015-11-20 00:29:08,636 [myid:] - INFO  [main:Environment@109] - Client environment:user.name=root
2015-11-20 00:29:08,637 [myid:] - INFO  [main:Environment@109] - Client environment:user.home=/root
2015-11-20 00:29:08,637 [myid:] - INFO  [main:Environment@109] - Client environment:user.dir=/
2015-11-20 00:29:08,638 [myid:] - INFO  [main:Environment@109] - Client environment:os.memory.free=26MB
2015-11-20 00:29:08,640 [myid:] - INFO  [main:Environment@109] - Client environment:os.memory.max=247MB
2015-11-20 00:29:08,641 [myid:] - INFO  [main:Environment@109] - Client environment:os.memory.total=30MB
2015-11-20 00:29:08,642 [myid:] - INFO  [main:ZooKeeper@709] - Initiating client connection, connectString=localhost:2181 sessionTimeout=30000 watcher=org.apache.zookeeper.ZooKeeperMain$MyWatcher@3c407d5
2015-11-20 00:29:08,721 [myid:] - INFO  [main-SendThread(localhost:2181):ClientCnxn$SendThread@1093] - Opening socket connection to server localhost/0:0:0:0:0:0:0:1:2181. Will not attempt to authenticate using SASL (unknown error)
2015-11-20 00:29:08,740 [myid:] - INFO  [main-SendThread(localhost:2181):ClientCnxn$SendThread@963] - Socket connection established to localhost/0:0:0:0:0:0:0:1:2181, initiating session
2015-11-20 00:29:08,762 [myid:] - INFO  [main-SendThread(localhost:2181):ClientCnxn$SendThread@1346] - Session establishment complete on server localhost/0:0:0:0:0:0:0:1:2181, sessionid = 0x151224b72c40000, negotiated timeout = 30000

WATCHER::

WatchedEvent state:SyncConnected type:None path:null
[zookeeper]
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
