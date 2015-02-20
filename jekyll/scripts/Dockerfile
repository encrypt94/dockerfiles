FROM ruby

RUN apt-get update && \
    apt-get upgrade -y

RUN gem install jekyll git sinatra

RUN apt-get install -y nodejs

ADD hook-server.rb /root/hook-server.rb

ENTRYPOINT /root/hook-server.rb

