leshan
======

leshan is a lwm2m system from https://leshan.eclipse.org .
See https://github.com/eclipse/leshan/

This repository provide a system to run the latest demo lwm2m and bootstrap servers provided by Hudson (https://hudson.eclipse.org/leshan/).

Run
---

Base:
```
docker network create leshan
```

Server:
```
docker run --rm -ti --net leshan -p 8080:8080 -p 5683:5683 -p 5684:5684 --name leshan-server corfr/leshan
```

Bootstrap server:
```
docker run --rm -ti --net leshan -p 8081:8080 -p 5783:5683 -p 5784:5684 --name leshan-bootstrap corfr/leshan bootstrap
```

You can pass arguments to each service, for instance:
```
docker run ... corfr/leshan server -- -help
```
