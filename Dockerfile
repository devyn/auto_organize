FROM ubuntu:18.04

RUN apt-get update -y && apt-get install -y ruby ruby-dev ruby-bundler build-essential

WORKDIR /app
COPY ./ /app/
RUN bundle install --deployment

FROM ubuntu:18.04

RUN apt-get update -y && apt-get install -y ruby ruby-bundler

WORKDIR /app
COPY --from=0 /app /app

ENTRYPOINT ["/usr/bin/bundle", "exec", "auto_organize"]
