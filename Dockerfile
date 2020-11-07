FROM ruby:2.6.5

ENV LANG C.UTF-8
ENV APP_ROOT /api

RUN apt-get update -qq && apt-get install -y  build-essential \
                                              default-mysql-client \
                                              nodejs

RUN mkdir ${APP_ROOT}
WORKDIR ${APP_ROOT}

COPY Gemfile ${APP_ROOT}/Gemfile
COPY Gemfile.lock ${APP_ROOT}/Gemfile.lock

RUN bundle install

COPY . ${APP_ROOT}