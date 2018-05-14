FROM python:alpine3.7
RUN apk --update add git
RUN git clone https://github.com/Backblaze/B2_Command_Line_Tool.git
WORKDIR B2_Command_Line_Tool
RUN python setup.py install
ENTRYPOINT b2 authorize-account $B2_ACCOUNTID $B2_APPLICATIONKEY && b2 list-buckets