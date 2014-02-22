all: php-all ruby-all node-all

php-all: php53 php54 php55

ruby-all: ruby193 ruby200 ruby210

node-all: node010 node011 node06 node08

ruby193: rbenv
	docker build -t jolicode/ruby-1.9.3 languages/ruby/1.9.3

ruby200: rbenv
	docker build -t jolicode/ruby-2.0.0 languages/ruby/2.0.0

ruby210: rbenv
	docker build -t jolicode/ruby-2.1.0 languages/ruby/2.1.0

node010: nvm
	docker build -t jolicode/node-0.10 languages/node/0.10

node011: nvm
	docker build -t jolicode/node-0.11 languages/node/0.11

node08: nvm
	docker build -t jolicode/node-0.8 languages/node/0.8

node06: nvm
	docker build -t jolicode/node-0.6 languages/node/0.6

php55: base
	docker build -t jolicode/php55 languages/php/5.5

php54: base
	docker build -t jolicode/php54 languages/php/5.4

php53: base
	docker build -t jolicode/php53 languages/php/5.3

rbenv: base
	docker build -t jolicode/rbenv languages/ruby

nvm: base
	docker build -t jolicode/nvm languages/node

base:
	docker build -t jolicode/base .