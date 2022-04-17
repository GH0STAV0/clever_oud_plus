
FROM quay.io/xm0uray/clever_oud_img

ENV DISPLAY=:1 \
    NGROK_TOKENS=test\
    google_main=test\
    VNC_PORT=5901 \
    NO_VNC_PORT=8080 \
    NO_VNC_PORT_A=6080 \
    SSH_PORT=22 \
    SUPER_VISOR__PORT=9001 \
    DEBIAN_FRONTEND=noninteractive
###########################################################################
ENV HOME=/headless \
    TERM=xterm \
    STARTUPDIR=/dockerstartup \
    INST_SCRIPTS=/headless/install \
    ADD_SCRIPTS=/root/install_add \
    NO_VNC_HOME=/usr/share/novnc \
    DEBIAN_FRONTEND=noninteractive \
    VNC_COL_DEPTH=24 \
    VNC_RESOLUTION=1360x768 \
    VNC_PW=vncpassword \
    VNC_VIEW_ONLY=false
### Envrionment config



EXPOSE $VNC_PORT $NO_VNC_PORT $SSH_PORT $SUPER_VISOR__PORT $NO_VNC_PORT_A


ENTRYPOINT [ "/usr/bin/tini", "--", "/dockerstartup/startup.sh" ]

#CMD ["/bin/bash", "/dockerstartup/startup.sh"]

#RUN python --version
#RUN python3.9 --version
#COPY requirements.txt .
#RUN --mount=type=cache,mode=0755,target=/root/.cache pip3 install -r requirements.txt 111
#COPY . .hh

#CMD ["python3", " --version"]
#CMD ["--wait"]

