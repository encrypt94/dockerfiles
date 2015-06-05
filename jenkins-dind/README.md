jekins-dind
===========

A jenkins image with [docker](https://github.com/jpetazzo/dind) inside.

Usage
-----

```
docker build -t jenkins-dind:latest .
docker run --name jenkins -d -v /your/jenkins/dir:/var/jenkins_home -p 8080:8080 jenkins-dind
```

Visit http://localhost:8080

TODO
----

* [ ] Add docker-compose