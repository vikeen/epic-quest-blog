# README

## Setup

1. Start backing apps `docker-compose up -d`
1. Install ruby gems `bundle install` 
1. Install npm packages `yarn install`
1. Create databases
    1. Development `docker exec -it postgres psql -U postgres -c "create database johnmrake_development"`
    1. Test `docker exec -it my_postgres psql -U postgres -c "create database johnmrake_test"`
1. Migrate database `rails db:migrate`
1. Start rails `rails s`

## Misc Database Commands

logs - `docker logs -f postgres`
psql - `docker exec -it postgres psql -U postgres`

## Tests

`rake test`

## Deployment instructions

TODO
