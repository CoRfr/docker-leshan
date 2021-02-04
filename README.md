leshan
======

leshan is a lwm2m system from https://leshan.eclipse.org .
See https://github.com/eclipse/leshan/

This repository provide a system to run the latest demo lwm2m and bootstrap servers provided by Hudson (https://hudson.eclipse.org/leshan/).

Run
---

Server:
```
docker run --rm -ti -p 8080:8080 -p 5683:5683 -p 5684:5684 --name leshan-server corfr/leshan server
```

Bootstrap server:
```
docker run --rm -ti -p 8081:8081 -p 5783:5783 -p 5784:5784 --name leshan-bootstrap corfr/leshan bootstrap -- -wp 8081 -lp 5783 -slp 5784
```

You can pass arguments to each service, for instance:
```
docker run ... corfr/leshan server -- -help
```
