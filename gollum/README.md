gollum
======

Usage
-----

`docker build -t "gollum" .`

`docker run -d -v /your/git/repo/path:/wiki -p 4000:4000 --name gollum gollum --port <port> --gollum-path /wiki`

Visit http://your-host:4000