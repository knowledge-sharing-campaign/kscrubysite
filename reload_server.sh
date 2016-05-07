#!/bin/bash

sudo /usr/local/bin/bundle install
sudo /usr/local/bin/rake db:migrate
sudo pkill puma || true
sudo /usr/local/bin/puma -d -p 8080 config.ru || true
