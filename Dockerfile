FROM linuxserver/rdesktop:ubuntu-mate
RUN curl -LO https://github.com/LizardByte/Sunshine/releases/download/v0.15.0/sunshine.deb
RUN apt update && apt install -y fuse ./sunshine.deb && apt clean
WORKDIR /root
