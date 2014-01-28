 ubuntu:12.04
tainer KazuyukiMori <mainya@gmail.com>

t locale
locale-gen en_US.UTF-8
update-locale LANG=en_US.UTF-8
DEBIAN_FRONTEND noninteractive
LC_ALL C
LC_ALL en_US.UTF-8

ke sure the package repository is up to date
echo "deb http://us.archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
apt-get update
apt-get install -y redis-server

expose 6379
entrypoint ["/usr/bin/redis-server"]
