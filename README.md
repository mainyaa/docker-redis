# Ruby on Docker

## Install Docker

Install docker and dvm

```bash
# Install Docker Mac binary
$ brew tap homebrew/binary
$ brew install docker

# Install dvm
$ brew tap fnichol/dvm
$ brew install dvm
```

```bash
$ dvm up
$ eval "$(dvm env)"
$ echo << 'EOF' >> ~/.bashrc
if [ -f "$(which dvm)" ]; then
  eval "$(dvm env)"
fi
EOF
```

### Try it !

```bash
$ docker build . -t mainyaa/redis
$ docker run -p 6379:6379 -d mainyaa/redis
$ docker ps
$ brew install redis
$ redis-cli -h $IP
> set docker awesome
OK
> get docker
"awesome"
```


