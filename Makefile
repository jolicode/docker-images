DOCKER=docker
BUILDFLAGS=--rm

all: php-all ruby-all node-all

php-all: php53 php54 php55 php56 hhvm

ruby-all: ruby193 ruby200 ruby210

node-all: node010 node011 node06 node08

ruby193: rbenv
	${DOCKER} build ${BUILDFLAGS} -t jolicode/ruby-1.9.3 languages/ruby/1.9.3

ruby200: rbenv
	${DOCKER} build ${BUILDFLAGS} -t jolicode/ruby-2.0.0 languages/ruby/2.0.0

ruby210: rbenv
	${DOCKER} build ${BUILDFLAGS} -t jolicode/ruby-2.1.0 languages/ruby/2.1.0

node010: nvm
	${DOCKER} build ${BUILDFLAGS} -t jolicode/node-0.10 languages/node/0.10

node011: nvm
	${DOCKER} build ${BUILDFLAGS} -t jolicode/node-0.11 languages/node/0.11

node08: nvm
	${DOCKER} build ${BUILDFLAGS} -t jolicode/node-0.8 languages/node/0.8

node06: nvm
	${DOCKER} build ${BUILDFLAGS} -t jolicode/node-0.6 languages/node/0.6

hhvm: base
	${DOCKER} build ${BUILDFLAGS} -t jolicode/hhvm languages/php/hhvm

php56: phpenv
	${DOCKER} build ${BUILDFLAGS} -t jolicode/php56 languages/php/5.6

php55: phpenv
	${DOCKER} build ${BUILDFLAGS} -t jolicode/php55 languages/php/5.5

php54: phpenv
	${DOCKER} build ${BUILDFLAGS} -t jolicode/php54 languages/php/5.4

php53: phpenv
	${DOCKER} build ${BUILDFLAGS} -t jolicode/php53 languages/php/5.3

phaudit: php56
	${DOCKER} build ${BUILDFLAGS} -t jolicode/phaudit languages/php/phaudit

rbenv: base
	${DOCKER} build ${BUILDFLAGS} -t jolicode/rbenv languages/ruby

phpenv: base
	${DOCKER} build ${BUILDFLAGS} -t jolicode/phpenv languages/php

nvm: base
	${DOCKER} build ${BUILDFLAGS} -t jolicode/nvm languages/node

base:
	${DOCKER} build ${BUILDFLAGS} -t jolicode/base .
