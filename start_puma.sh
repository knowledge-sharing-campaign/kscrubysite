#!/bin/bash

sudo /usr/local/bin/puma -d -p 80 config.ru || true
