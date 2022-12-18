FROM linuxserver/rdesktop:ubuntu-mate
RUN curl -LO https://github.com/LizardByte/Sunshine/releases/download/v0.16.0/sunshine-22.04.deb
RUN apt update && apt install -y  libva2 libva-drm2 libnuma1 libvdpau1 ./sunshine-22.04.deb 
RUN usermod -aG input abc
RUN echo KERNEL=="uinput", GROUP="input", MODE="0660", OPTIONS+="static_node=uinput" > /usr/lib/udev/rules.d/85-sunshine-input.rules
WORKDIR /root
