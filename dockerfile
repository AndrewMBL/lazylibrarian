FROM docker:stable

RUN apt-get update && apt-get install -y python3-pip
RUN apt-get update && apt-get install -y nginx

RUN pip3 install lazylibrarian

CMD ["lazylibrarian"]
CMD ["nginx", "-g", "daemon off;"]