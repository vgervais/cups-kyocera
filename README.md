# cups-kyocera
Cups with Kyocera ECOSYS P3260dn Driver

Run the following (note to include the full stop in the command)

`docker build -t kyocera-cups .`

After the image is built, run the following to start the container

`docker run -d --restart always -p 631:631 -v $(pwd):/etc/cups kyocera-cups`

You can then access the UI from the IP address of the host with port 631 (eg: https://192.168.1.1:631) - Note use https to enable access to the add printer function
