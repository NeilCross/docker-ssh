docker-ssh
==========

A simple docker container that runs ssh

To build the image do:

```
docker build -t docker-ssh git://github.com/neilcross/docker-ssh
```

To run a container do:

```
docker run -p 2222:22 -d -t docker-ssh
```

To log into your container do:

```
ssh root@localhost -p 2222
```

To specify a password set the ROOT_PASSWORD environment variable:

```
docker run -e ROOT_PASSWORD=Password_Here -p 2222:22 -d -t docker-ssh
```

Default password will appear in docker logs:

```
docker logs <container name> | grep 'root login password'
```

-----------

Tim Sutton (tim@linfiniti.com)
May 2014
