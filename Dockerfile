FROM linuxserver/rdesktop:ubuntu-mate
RUN curl -LO http://nz2.archive.ubuntu.com/ubuntu/pool/main/o/openssl/libssl1.1_1.1.1f-1ubuntu2.16_amd64.deb
RUN curl -LO https://github.com/LizardByte/Sunshine/releases/download/v0.15.0/sunshine.deb
RUN apt update && apt install -y fuse ./sunshine.deb ./libssl1.1_1.1.1f-1ubuntu2.16_amd64.deb && apt clean
RUN usermod -aG input abc
RUN echo KERNEL=="uinput", GROUP="input", MODE="0660", OPTIONS+="static_node=uinput" > /usr/lib/udev/rules.d/85-sunshine-input.rules
WORKDIR /root
