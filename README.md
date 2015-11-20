# docker-zookeeper - a Docker container running a continuous Zookeeper node

# DOCKER HUB

https://registry.hub.docker.com/u/mcandre/docker-zookeeper/

# EXAMPLE

```
$ make
CONTAINER=$(docker run -d -p 2181:2181 -p 2888:2888 -p 3888:3888 mcandre/docker-zookeeper:3.3.6)
docker exec $(CONTAINER) zkCli.sh ls /
Connecting to localhost:2181
2015-11-20 00:26:29,519 - INFO  [main:Environment@97] - Client environment:zookeeper.version=3.3.6-1366786, built on 07/29/2012 06:22 GMT
2015-11-20 00:26:29,523 - INFO  [main:Environment@97] - Client environment:host.name=10d03cdafdd1
2015-11-20 00:26:29,524 - INFO  [main:Environment@97] - Client environment:java.version=1.7.0_85
2015-11-20 00:26:29,525 - INFO  [main:Environment@97] - Client environment:java.vendor=Oracle Corporation
2015-11-20 00:26:29,529 - INFO  [main:Environment@97] - Client environment:java.home=/usr/lib/jvm/java-7-openjdk-amd64/jre
2015-11-20 00:26:29,530 - INFO  [main:Environment@97] - Client environment:java.class.path=/zookeeper-3.3.6/bin/../build/classes:/zookeeper-3.3.6/bin/../build/lib/*.jar:/zookeeper-3.3.6/bin/../zookeeper-3.3.6.jar:/zookeeper-3.3.6/bin/../lib/log4j-1.2.15.jar:/zookeeper-3.3.6/bin/../lib/jline-0.9.94.jar:/zookeeper-3.3.6/bin/../src/java/lib/*.jar:/zookeeper-3.3.6/bin/../conf:
2015-11-20 00:26:29,531 - INFO  [main:Environment@97] - Client environment:java.library.path=/usr/java/packages/lib/amd64:/usr/lib/x86_64-linux-gnu/jni:/lib/x86_64-linux-gnu:/usr/lib/x86_64-linux-gnu:/usr/lib/jni:/lib:/usr/lib
2015-11-20 00:26:29,532 - INFO  [main:Environment@97] - Client environment:java.io.tmpdir=/tmp
2015-11-20 00:26:29,532 - INFO  [main:Environment@97] - Client environment:java.compiler=<NA>
2015-11-20 00:26:29,533 - INFO  [main:Environment@97] - Client environment:os.name=Linux
2015-11-20 00:26:29,534 - INFO  [main:Environment@97] - Client environment:os.arch=amd64
2015-11-20 00:26:29,536 - INFO  [main:Environment@97] - Client environment:os.version=4.0.9-boot2docker
2015-11-20 00:26:29,537 - INFO  [main:Environment@97] - Client environment:user.name=root
2015-11-20 00:26:29,538 - INFO  [main:Environment@97] - Client environment:user.home=/root
2015-11-20 00:26:29,540 - INFO  [main:Environment@97] - Client environment:user.dir=/
2015-11-20 00:26:29,542 - INFO  [main:ZooKeeper@379] - Initiating client connection, connectString=localhost:2181 sessionTimeout=30000 watcher=org.apache.zookeeper.ZooKeeperMain$MyWatcher@66f3c66e
2015-11-20 00:26:29,565 - INFO  [main-SendThread():ClientCnxn$SendThread@1058] - Opening socket connection to server localhost/0:0:0:0:0:0:0:1:2181
2015-11-20 00:26:29,599 - INFO  [main-SendThread(localhost:2181):ClientCnxn$SendThread@947] - Socket connection established to localhost/0:0:0:0:0:0:0:1:2181, initiating session
2015-11-20 00:26:29,628 - INFO  [main-SendThread(localhost:2181):ClientCnxn$SendThread@736] - Session establishment complete on server localhost/0:0:0:0:0:0:0:1:2181, sessionid = 0x151224904b00000, negotiated timeout = 30000

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
