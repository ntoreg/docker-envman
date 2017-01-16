FROM ruby:2.2-alpine
MAINTAINER Noriaki Terakado <ntoreg@gmail.com>
RUN apk --no-cache --update add git build-base \
  && git clone https://github.com/dounokouno/ENV-Man.git
WORKDIR ./ENV-Man
RUN bundle install --path=vendor/bundle
ENTRYPOINT ["bundle", "exec", "rackup", "-o", "0.0.0.0", "-p", "9292"]
