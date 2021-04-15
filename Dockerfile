# Simple sandbox I use for testing, sets up my work env
FROM alpine:latest

RUN apk update && apk add curl git make vim tmux bash

RUN mkdir -p /root/repos && git clone https://github.com/skiqqy/.dotfiles /root/repos/.dotfiles
RUN cd /root/repos/.dotfiles && make bash vim

ENTRYPOINT ["/bin/bash"]
