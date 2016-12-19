FROM ruby:2.2.4

MAINTAINER hello-world <pixelgoo@gmail.com>

RUN apt-get update -qq && apt-get install -y build-essential

RUN apt-get install -y libpq-dev

RUN apt-get install -y libxml2-dev libxslt1-dev

RUN apt-get install -y libqt4-webkit libqt4-dev xvfb

RUN apt-get install -y nodejs

RUN mkdir /MarsTracker

WORKDIR /MarsTracker

ADD Gemfile /MarsTracker/Gemfile
ADD Gemfile.lock /MarsTracker/Gemfile.lock

RUN bundle install

ADD . /MarsTracker