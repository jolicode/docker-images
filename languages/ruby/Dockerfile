FROM jolicode/base
MAINTAINER Joel Wurtz <jwurtz@jolicode.com>

ENV PATH $HOME/.rbenv/bin:$HOME/.rbenv/shims:$PATH
ENV CONFIGURE_OPTS --disable-install-doc

# Install deps
RUN sudo apt-get update && \
    sudo apt-get install -y build-essential subversion autoconf libpq-dev libsqlite3-dev libmysqlclient-dev zlib1g-dev libssl-dev libreadline-dev libyaml-dev libxml2-dev libxslt-dev && \
    sudo apt-get clean && \
    sudo rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Install rbenv and ruby-build
RUN git clone https://github.com/sstephenson/rbenv.git      $HOME/.rbenv && \
    git clone https://github.com/sstephenson/ruby-build.git $HOME/.rbenv/plugins/ruby-build && \
    $HOME/.rbenv/plugins/ruby-build/install.sh && \
    sudo /bin/bash -c "echo 'eval \"\$(rbenv init -)\"' >> /etc/profile.d/rbenv.sh" && \
    echo 'eval "$(rbenv init -)"' >> $HOME/.bashrc

