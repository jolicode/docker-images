FROM jolicode/base
MAINTAINER Joel Wurtz <jwurtz@jolicode.com>

# Install deps
RUN apt-get install -y build-essential subversion autoconf zlib1g-dev libssl-dev libreadline-dev libyaml-dev libxml2-dev libxslt-dev

# Install rbenv and ruby-build
RUN git clone https://github.com/sstephenson/rbenv.git      /root/.rbenv
RUN git clone https://github.com/sstephenson/ruby-build.git /root/.rbenv/plugins/ruby-build
RUN ./root/.rbenv/plugins/ruby-build/install.sh
ENV PATH /root/.rbenv/bin:$PATH
RUN echo 'eval "$(rbenv init -)"' >> /etc/profile.d/rbenv.sh # or /etc/profile
RUN echo 'eval "$(rbenv init -)"' >> .bashrc
