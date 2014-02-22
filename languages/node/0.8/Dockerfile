FROM jolicode/nvm
MAINTAINER Joel Wurtz <jwurtz@jolicode.com>

ENV NODE_VERSION 0.8
RUN /bin/bash -l -c "nvm install $NODE_VERSION && nvm use $NODE_VERSION && rm -rf $HOME/.nvm/bin && ln -s \$NVM_BIN $HOME/.nvm/bin"