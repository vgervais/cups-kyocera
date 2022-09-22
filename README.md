# cups-kyocera
Cups with Kyocera ECOSYS P3260dn Driver

Run the following (note to include the full stop in the command)

```docker build -t kyocera-cups .```

After the image is built, run the following to start the container

```docker run -d --restart always -p 631:631 --name kyocera-cups -v $(pwd):/etc/cups kyocera-cups```

To gain access to the Administration > Add Printer function, you will need the username & password. On a normal local install, this would be the user. Under a (this) Docker install, you will need to change the root password. To do this, follow these steps:

Obtain the container ID by typing ```docker ps``` This will show all containers running.

Create / change the root password of the container with the command ```docker exec -it kyocera-cups passwd```

You can then access the UI from the IP address of the host with port 631 (eg: https://192.168.1.1:631) - Note use https to enable access to the Add Printer function mentioned above.
