[![CircleCI](https://circleci.com/gh/maxkadel/inthegreen.svg?style=svg)](https://circleci.com/gh/maxkadel/inthegreen)

# README

* Ruby 2.6.6

* Rails 6.0.2

* Postgresql database

* Run `bundle install`
* Database creation
  * run `rails db:setup`
  * run `rails db:migrate`

* Start the application in development by running `rails s`

* run test suite with `rspec spec`
  * Alternatively, run single tests with `rspec spec/myfolder/mytest_spec.rb`


# Prerequisites

- Download [Docker Desktop](https://www.docker.com/products/docker-desktop) and log in

# Docker Development Setup

## Clone application

```bash
git clone git@github.com:maxkadel/inthegreen.git
```
## Bring up the application for development
* Build the Docker image - `docker-compose build web`
* Bring up the Docker image - `docker-compose up web`
* Bash into the now running Docker container `docker-compose exec web bash`
  * If you don't need to do a bundle install, and don't want to have to preface commands with "bundle exec," you can also use `docker-compose exec web bundle exec bash`
* In the Docker container, run
```bash
bundle exec rails db:setup
bundle exec rails db:migrate
```
