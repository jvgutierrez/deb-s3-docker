FROM ubuntu:14.04
MAINTAINER "Valentin Gutierrez"
RUN apt-get update
RUN apt-get install -y build-essential \
    ruby-dev \ 
    zlib1g-dev
RUN gem install deb-s3 --no-rdoc --no-ri
RUN useradd -m debs3
USER debs3
WORKDIR /home/debs3
CMD ["/bin/bash"]
