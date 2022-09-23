# put the file kyodialog_5.0-0_amd64.deb in the same folder as your Dockerfile
FROM ydkn/cups
COPY kyodialog_5.0-0_amd64.deb ./tmp
RUN apt-get update && apt-get install -y python python-dev python-reportlab libqt5gui5
RUN apt-get install ./tmp/kyodialog_5.0-0_amd64.deb
RUN apt-get clean && rm -rf /var/lib/apt/lists/* && rm ./tmp/kyo*
