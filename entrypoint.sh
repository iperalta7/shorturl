#!/bin/bash

# Run data migrations
bundle exec rails db:migrate

# Start the Rails server
bundle exec rails server -b 0.0.0.0
