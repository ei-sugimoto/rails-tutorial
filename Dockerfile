FROM ruby:3.1

RUN mkdir /app
WORKDIR /app
COPY ./app/Gemfile /app/Gemfile
#COPY Gemfile.lock /myapp/Gemfile.lock

# Bundlerの不具合対策(1)
RUN gem update --system
RUN bundle install

RUN bundle update --bundler

COPY ./app /myapp

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/entrypoint.sh
RUN chmod +x /usr/bin/entrypoint.sh
EXPOSE 3000

# Start the main process.
#CMD ["rails", "server", "-b", "0.0.0.0"]