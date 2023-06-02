# docker will pull a setup of ruby(like npm)
FROM ruby

#work direcrot. default folder location
WORKDIR /home/app

#environemtnt variable
ENV PORT 3000

EXPOSE $PORT

RUN gem install rails bundler
RUN gem install rails
RUN apt-get update -qq && apt-get install -y nodejs

ENTRYPOINT [ "/bin/bash" ]