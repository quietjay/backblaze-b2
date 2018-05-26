FROM python:alpine3.7
ADD entrypoint.sh /
RUN set -ex \
    && chmod +x /entrypoint.sh \
    && apk --update add git \
    && git clone https://github.com/Backblaze/B2_Command_Line_Tool.git
WORKDIR B2_Command_Line_Tool
RUN python setup.py install
ENV B2_ACCOUNTID accountid
ENV B2_APPLICATIONKEY applicationkey
ENTRYPOINT ["/entrypoint.sh"]