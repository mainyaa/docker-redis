from ubuntu:12.04
maintainer KazuyukiMori <mainya@gmail.com>

# set locale
run locale-gen en_US.UTF-8
run update-locale LANG=en_US.UTF-8
env DEBIAN_FRONTEND noninteractive
env LC_ALL C
env LC_ALL en_US.UTF-8

run echo "deb http://us.archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
run apt-get update 
run apt-get install -y redis-server --no-install-recommends
run apt-get upgrade -y && apt-get clean && rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/* 

expose 6379
entrypoint ["/usr/bin/redis-server"]

