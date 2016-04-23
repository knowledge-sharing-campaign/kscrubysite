#!/bin/bash

sudo puma -d -p 80 config.ru || true
