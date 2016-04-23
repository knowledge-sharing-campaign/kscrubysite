#!/bin/bash

sudo -i
bundle install
pkill puma || true
puma -d -p 80 config.ru || true
exit
