#!/bin/bash

sudo /usr/local/bin/bundle install
sudo pkill puma || true
sudo /usr/local/bin/puma -d -p 80 config.ru || true
