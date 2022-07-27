# put the folders filter & kyocera in the directory you want to work.
# filters contains the filters and kyocera contains the ppd's
FROM ydkn/cups
COPY filter /usr/share/filter
COPY kyocera /usr/share/ppd/kyocera
