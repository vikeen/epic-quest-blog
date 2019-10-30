#phony dependency task that does nothing
phony:

## start the application
start: phony
	rails s

## install deps
install: phony
	bundle install
	yarn install

## run application test suite
test: phony
	rake test

## setup the database
db-setup: phony
	rake db:setup

## run any database migrations
db-migrate: phony
	rake db:migrate

## reset the database and migrate
db-reset: phony
	rake db:drop db:create db:migrate db:seed

## seed the database with fake development data
db-seed: phony
	rails db:seed

## list all application routes
routes: phony
	rails routes
