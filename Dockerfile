FROM python:alpine3.7
RUN apk --update add git
RUN git clone https://github.com/Backblaze/B2_Command_Line_Tool.git
WORKDIR B2_Command_Line_Tool
RUN python setup.py install
#RUN pip install b2