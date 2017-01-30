FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.2.1

RUN gem install auto-consul --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["auto-consul"]
CMD ["--help"]
