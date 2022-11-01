FROM ruby:2.6.5-alpine3.10

ENV BUNDLER_VERSION=2.2.1

ENV APP_PATH /app
RUN mkdir -p $APP_PATH
WORKDIR $APP_PATH

RUN apk update -qq && apk add --update build-base postgresql-dev imagemagick git

RUN apk add vim curl bash

RUN gem install bundler -v 2.2.1

RUN apk update && apk add -u nodejs

COPY package.json ./

COPY Gemfile* ./

RUN bundle install --jobs=20 --retry=4

RUN cp Gemfile.lock /tmp

COPY . .

RUN chmod +x build/**/*.sh

CMD ["sh"]
