
FROM ubuntu

RUN locale-gen "en_US.UTF-8"
RUN update-locale LANG=en_US.UTF-8 LC_MESSAGES=POSIX

RUN apt-get update
RUN apt-get install -y curl

RUN curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash -
RUN apt-get install -y nodejs
RUN apt-get install -y build-essential
RUN npm install npm -g

RUN apt-get install -y git

RUN apt-get install -y ruby-full rubygems-integration
RUN gem install sass
RUN gem install bundler

RUN npm install -g gulp
RUN npm install -g bower

RUN apt-get install -y graphicsmagick
