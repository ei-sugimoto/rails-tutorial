FROM ruby:latest

RUN gem update --system && gem install rails
