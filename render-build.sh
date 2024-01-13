#!/usr/bin/env bash
# exit on error
set -o errexit

bundle install
bundle exec rake db:create --trace
bundle exec rake db:migrate --trace
