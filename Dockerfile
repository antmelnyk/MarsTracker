FROM ruby:2.2.4

MAINTAINER hello-world <pixelgoo@gmail.com>

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

RUN mkdir /MarsTracker

WORKDIR /MarsTracker

ADD Gemfile /MarsTracker/Gemfile
ADD Gemfile.lock /MarsTracker/Gemfile.lock

RUN bundle install

ADD . /MarsTracker