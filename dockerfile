# docker will pull a setup of ruby(like npm)
FROM ruby

#work direcrot. default folder location
WORKDIR /home/app


COPY Gemfile Gemfile.lock ./

# Install gems
RUN gem install bundler && \
    bundle install --jobs 4

# Copy the application code
COPY . .

# Expose ports
EXPOSE 3000

# Set the entrypoint command
CMD ["rails", "server", "-b", "0.0.0.0"]