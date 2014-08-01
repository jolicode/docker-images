FROM jolicode/rbenv

RUN rbenv install 2.0.0-p353 && rbenv global 2.0.0-p353

# Install Bundler for each version of ruby
RUN echo 'gem: --no-rdoc --no-ri' >> /$HOME/.gemrc
RUN gem install bundler
