FROM ruby

RUN apt-get update && \
    apt-get upgrade -y

RUN gem install jekyll git sinatra

RUN apt-get install -y nodejs

RUN ssh-keygen -f /root/.ssh/id_rsa

ADD scripts/hook-server.rb /root/hook-server.rb

ENTRYPOINT /root/hook-server.rb

