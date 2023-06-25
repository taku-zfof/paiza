FROM ruby:3.1.2

WORKDIR /app

RUN bundle config path 'vendor/bundle'