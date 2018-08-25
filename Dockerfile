FROM dclong/jupyterhub

COPY scripts /scripts/

RUN dpkg -i /scripts/tdicu1620.deb \
    && dpkg -i /scripts/cliv21620.deb \
    && rm /scripts/*.deb

RUN pip3 install giraffez
