FROM jolicode/base
MAINTAINER Joel Wurtz <jwurtz@jolicode.com>

RUN apt-get install -y build-essential libssl-dev libmysqlclient-dev

RUN curl https://raw.github.com/creationix/nvm/master/install.sh | sh
RUN echo "[[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh" >> /etc/profile.d/npm.sh
RUN echo "[[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh" >> $HOME/.bashrc

ENV PATH $HOME/.nvm/bin:$PATH