# Use the official Ruby image as the base image
FROM ruby:2.7.0

# Set the working directory in the container
WORKDIR /app

# Copy the Gemfile and Gemfile.lock into the container
COPY Gemfile Gemfile.lock ./

RUN apt-get update -qq && apt-get install -y nodejs npm
# Install dependencies
RUN bundle install

# Copy the rest of the application code into the container
COPY . .

# Expose port 3000
EXPOSE 3000

# Start the Rails application
CMD ["rails", "server", "-b", "0.0.0.0"]