FROM python:alpine3.7
RUN apk --update add git
RUN git clone https://github.com/Backblaze/B2_Command_Line_Tool.git
WORKDIR B2_Command_Line_Tool
RUN python setup.py install
ENV B2_ACCOUNTID accountid
ENV B2_APPLICATIONKEY applicationkey
ADD entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]