# The first lines of your Dockerfile should always be:
FROM python:2-slim

RUN mkdir /plugwise && mkdir /plugwise/data && mkdir /plugwise/log && touch /plugwise/data/pwlastlog.log

ADD . /opt/plugwise
RUN cd /opt/plugwise && \
    pip install .

WORKDIR /opt/plugwise
CMD ["python","/opt/plugwise/Plugwise-2.py"]
