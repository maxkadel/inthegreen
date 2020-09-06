FROM ruby:2.6.6

RUN echo 'Downloading Packages' && \
  curl -sL https://deb.nodesource.com/setup_12.x | bash - && \
  curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
  echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
  apt-get update -qq && \
  apt-get install -y --no-install-recommends \
    postgresql-client \
    nodejs \
    yarn \
  && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && \
  echo 'Packages Downloaded'

# Install Chrome so we can run system specs
RUN apt-get update && apt-get install -y wget && \
  wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - && \
  sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list' && \
  apt-get update && \
  apt-get install -y google-chrome-stable && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && \
  echo 'Chrome installed'

RUN mkdir /inthegreen
WORKDIR /inthegreen
COPY Gemfile /inthegreen/Gemfile
COPY Gemfile.lock /inthegreen/Gemfile.lock
RUN gem install bundler && bundle install
COPY . /inthegreen

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/

RUN chmod +x /usr/bin/entrypoint.sh

ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"]
