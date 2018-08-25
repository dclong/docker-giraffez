FROM dclong/jupyterhub

RUN apt-get update \
    && apt-get install -y lib32stdc++6 \
    && apt-get autoremove -y \
    && apt-get autoclean -y

COPY scripts /scripts/

RUN dpkg -i /scripts/tdicu1620.deb \
    && dpkg -i /scripts/cliv21620.deb \
    && rm /scripts/*.deb

RUN pip3 install giraffez
