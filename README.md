# docker-zookeeper - a Docker container running a continuous Zookeeper node

# DOCKER HUB

https://registry.hub.docker.com/u/mcandre/docker-zookeeper/

# EXAMPLE

```
$ make
CONTAINER=$(docker run -d -p 2181:2181 -p 2888:2888 -p 3888:3888 mcandre/docker-zookeeper:3.5.0-alpha)
docker exec $CONTAINER sh -c 'echo "create /dog moon" | zkCli.sh'
Connecting to localhost:2181
2015-11-20 01:05:54,951 [myid:] - INFO  [main:Environment@109] - Client environment:zookeeper.version=3.5.0-alpha-1615249, built on 08/01/2014 22:13 GMT
2015-11-20 01:05:54,958 [myid:] - INFO  [main:Environment@109] - Client environment:host.name=190002648bbc
2015-11-20 01:05:54,958 [myid:] - INFO  [main:Environment@109] - Client environment:java.version=1.7.0_85
2015-11-20 01:05:54,969 [myid:] - INFO  [main:Environment@109] - Client environment:java.vendor=Oracle Corporation
2015-11-20 01:05:54,970 [myid:] - INFO  [main:Environment@109] - Client environment:java.home=/usr/lib/jvm/java-7-openjdk-amd64/jre
2015-11-20 01:05:54,970 [myid:] - INFO  [main:Environment@109] - Client environment:java.class.path=/zookeeper-3.5.0-alpha/bin/../build/classes:/zookeeper-3.5.0-alpha/bin/../build/lib/*.jar:/zookeeper-3.5.0-alpha/bin/../lib/slf4j-log4j12-1.7.5.jar:/zookeeper-3.5.0-alpha/bin/../lib/slf4j-api-1.7.5.jar:/zookeeper-3.5.0-alpha/bin/../lib/servlet-api-2.5-20081211.jar:/zookeeper-3.5.0-alpha/bin/../lib/netty-3.7.0.Final.jar:/zookeeper-3.5.0-alpha/bin/../lib/log4j-1.2.16.jar:/zookeeper-3.5.0-alpha/bin/../lib/jline-2.11.jar:/zookeeper-3.5.0-alpha/bin/../lib/jetty-util-6.1.26.jar:/zookeeper-3.5.0-alpha/bin/../lib/jetty-6.1.26.jar:/zookeeper-3.5.0-alpha/bin/../lib/javacc.jar:/zookeeper-3.5.0-alpha/bin/../lib/jackson-mapper-asl-1.9.11.jar:/zookeeper-3.5.0-alpha/bin/../lib/jackson-core-asl-1.9.11.jar:/zookeeper-3.5.0-alpha/bin/../lib/commons-cli-1.2.jar:/zookeeper-3.5.0-alpha/bin/../zookeeper-3.5.0-alpha.jar:/zookeeper-3.5.0-alpha/bin/../src/java/lib/*.jar:/zookeeper-3.5.0-alpha/bin/../conf:
2015-11-20 01:05:54,971 [myid:] - INFO  [main:Environment@109] - Client environment:java.library.path=/usr/java/packages/lib/amd64:/usr/lib/x86_64-linux-gnu/jni:/lib/x86_64-linux-gnu:/usr/lib/x86_64-linux-gnu:/usr/lib/jni:/lib:/usr/lib
2015-11-20 01:05:54,972 [myid:] - INFO  [main:Environment@109] - Client environment:java.io.tmpdir=/tmp
2015-11-20 01:05:54,972 [myid:] - INFO  [main:Environment@109] - Client environment:java.compiler=<NA>
2015-11-20 01:05:54,973 [myid:] - INFO  [main:Environment@109] - Client environment:os.name=Linux
2015-11-20 01:05:54,973 [myid:] - INFO  [main:Environment@109] - Client environment:os.arch=amd64
2015-11-20 01:05:54,974 [myid:] - INFO  [main:Environment@109] - Client environment:os.version=4.0.9-boot2docker
2015-11-20 01:05:54,974 [myid:] - INFO  [main:Environment@109] - Client environment:user.name=root
2015-11-20 01:05:54,974 [myid:] - INFO  [main:Environment@109] - Client environment:user.home=/root
2015-11-20 01:05:54,975 [myid:] - INFO  [main:Environment@109] - Client environment:user.dir=/
2015-11-20 01:05:54,975 [myid:] - INFO  [main:Environment@109] - Client environment:os.memory.free=26MB
2015-11-20 01:05:54,977 [myid:] - INFO  [main:Environment@109] - Client environment:os.memory.max=247MB
2015-11-20 01:05:54,977 [myid:] - INFO  [main:Environment@109] - Client environment:os.memory.total=30MB
2015-11-20 01:05:54,987 [myid:] - INFO  [main:ZooKeeper@709] - Initiating client connection, connectString=localhost:2181 sessionTimeout=30000 watcher=org.apache.zookeeper.ZooKeeperMain$MyWatcher@3c407d5
Welcome to ZooKeeper!
2015-11-20 01:05:55,062 [myid:] - INFO  [main-SendThread(localhost:2181):ClientCnxn$SendThread@1093] - Opening socket connection to server localhost/127.0.0.1:2181. Will not attempt to authenticate using SASL (unknown error)
2015-11-20 01:05:55,099 [myid:] - INFO  [main-SendThread(localhost:2181):ClientCnxn$SendThread@963] - Socket connection established to localhost/127.0.0.1:2181, initiating session
JLine support is enabled
2015-11-20 01:05:55,154 [myid:] - INFO  [main-SendThread(localhost:2181):ClientCnxn$SendThread@1209] - Unable to read additional data from server sessionid 0x0, likely server has closed socket, closing socket connection and attempting reconnect
[zk: localhost:2181(CONNECTING) 0] create /dog moon
Exception in thread "main" org.apache.zookeeper.KeeperException$ConnectionLossException: KeeperErrorCode = ConnectionLoss for /dog
	at org.apache.zookeeper.KeeperException.create(KeeperException.java:99)
	at org.apache.zookeeper.KeeperException.create(KeeperException.java:51)
	at org.apache.zookeeper.ZooKeeper.create(ZooKeeper.java:1067)
	at org.apache.zookeeper.cli.CreateCommand.exec(CreateCommand.java:78)
	at org.apache.zookeeper.ZooKeeperMain.processZKCmd(ZooKeeperMain.java:670)
	at org.apache.zookeeper.ZooKeeperMain.processCmd(ZooKeeperMain.java:573)
	at org.apache.zookeeper.ZooKeeperMain.executeLine(ZooKeeperMain.java:356)
	at org.apache.zookeeper.ZooKeeperMain.run(ZooKeeperMain.java:316)
	at org.apache.zookeeper.ZooKeeperMain.main(ZooKeeperMain.java:276)
make: *** [run] Error 1
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
