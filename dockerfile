ARG BUILD_FROM = linuxserver/lazylibrarian
FROM $BUILD_FROM

ENV LANG C.UTF-8

# Install required packages
RUN apk add --no-cache python3 py3-pip

# Copy the start script
COPY run.sh /

# Set the start script as executable
RUN chmod a+x /run.sh

# Start LazyLibrarian
CMD [ "/run.sh" ]
