tmux boxes
==========

Base boxes with tmux

Usage
-----

    docker build -t alpinelinux:tmux .
    docker run -td alpinelinux:tmux
    docker exec -ti <container-id> tmux

Notes
-----

Default user is __user__ with __default__ as password and it's a sudoer

Check [this](https://github.com/docker/docker/issues/8755)
