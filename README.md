# cups-kyocera
Cups with Kyocera ECOSYS P3260dn Driver

Run the following (note to include the full stop in the command)

```docker build -t kyocera-cups .```

After the image is built, run the following to start the container

```docker run -d --restart always -p 631:631 -v $(pwd):/etc/cups kyocera-cups```

To gain access to the Administration > Add Printer function, you will need the username & password. On a normal local install, this would be the user. Under a (this) Docker install, you will need to change the root password. To do this, follow these steps:

Obtain the container ID by typing ```docker ps``` This will show all containers running.
Log into container with ```docker exec -it (container ID) bash```
change the root password by typing ```passwd``` This will give you the option to create a new password and then confirm it.
Once this is done you can exit the container by Pressing Ctrl+D

You can then access the UI from the IP address of the host with port 631 (eg: https://192.168.1.1:631) - Note use https to enable access to the Add Printer function mentioned above.
