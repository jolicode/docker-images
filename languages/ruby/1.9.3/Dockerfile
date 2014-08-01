FROM jolicode/rbenv

# Install multiple versions of ruby
RUN rbenv install 1.9.3-p484 && rbenv global 1.9.3-p484

# Install Bundler for each version of ruby
RUN echo 'gem: --no-rdoc --no-ri' >> /$HOME/.gemrc
RUN gem install bundler
