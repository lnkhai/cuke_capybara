#!/usr/bin/env bash

RVM_GEMSET=$(cat .ruby-version .ruby-gemset | tr "\\n" "@" | sed 's/@$//')
export PATH=$PATH:$(pwd)/test/bin

echo "using ${RVM_GEMSET} gemset"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
[[ -s "/usr/local/rvm/scripts/rvm" ]] && . "/usr/local/rvm/scripts/rvm"

rvm --create --install use $RVM_GEMSET

export BUNDLE_GEMFILE=$(pwd)/config/Gemfile

which bundle | grep ${RVM_GEMSET} >/dev/null || gem install bundler --no-rdoc --no-ri

bundle check > /dev/null || bundle install

bundle exec rake -f config/Rakefile $@
