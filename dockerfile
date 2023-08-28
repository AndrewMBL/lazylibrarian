FROM docker:stable

RUN apt-get update && apt-get install -y python3-pip

RUN pip3 install lazylibrarian

CMD ["lazylibrarian"]