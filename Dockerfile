FROM linuxserver/rdesktop:ubuntu-mate
RUN apt update && apt install -y fuse && apt clean
WORKDIR /root
