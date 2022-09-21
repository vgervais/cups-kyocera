# put the file kyodialog_5.0-0_amd64.deb in the same folder as your Dockerfile
FROM ydkn/cups
COPY kyodialog_5.0-0_amd64.deb . /tmp
RUN apt-get update && dpkg -i kyodialog_5.0-0_amd64.deb && apt-get install -f
