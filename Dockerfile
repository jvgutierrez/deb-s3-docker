FROM alpine:latest
MAINTAINER "Valentin Gutierrez"
RUN apk add --no-cache \
	ruby \
	ruby-bundler \
	ruby-io-console \
	ruby-nokogiri \
	ruby-json
RUN gem update bundler -N
RUN gem install deb-s3 -N 
RUN rm -rf /var/cache/apk/*
RUN adduser -D debs3
USER debs3
WORKDIR /home/debs3
CMD ["/bin/sh"]
