FROM ruby
MAINTAINER encrypt <encrypt@labr.xyz>

RUN apt-get update && \
    apt-get upgrade -y

RUN apt-get install -y libicu-dev && \
    gem install gollum

ENTRYPOINT ["gollum"]