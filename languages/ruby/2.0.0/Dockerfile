FROM jolicode/rbenv

# Install multiple versions of ruby
ENV CONFIGURE_OPTS --disable-install-doc
RUN rbenv install 2.0.0-p353 && rbenv global 2.0.0-p353
RUN rbenv rehash

# Install Bundler for each version of ruby
RUN echo 'gem: --no-rdoc --no-ri' >> /$HOME/.gemrc
RUN gem install bundler
