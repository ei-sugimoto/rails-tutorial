FROM ruby:3.1

RUN mkdir /src
WORKDIR /src
COPY ./src/Gemfile /src/Gemfile
#COPY Gemfile.lock /mysrc/Gemfile.lock

# Bundlerの不具合対策(1)
RUN gem update --system
RUN bundle install

RUN bundle update --bundler

COPY ./src /src

# Add a script to be executed every time the container starts.
EXPOSE 8080

COPY src/entrypoint.sh usr/bin/entrypoint.sh

# Start the main process.
CMD ["rails", "server", "-p", "8080"]