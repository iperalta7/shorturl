# docker will pull a setup of ruby(like npm)
FROM ruby:3.2.2

#default folder location
WORKDIR /home/app

# Copy the application code
COPY . .

# Install gems
RUN gem install bundler && \
    bundle install --jobs=4

# Run data migrations
RUN bundle exec rails db:migrate

# Expose ports
EXPOSE 3000

# Configure the main process to run when running the image
CMD ["rails", "server", "-b", "0.0.0.0"]