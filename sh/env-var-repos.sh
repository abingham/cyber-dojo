#!/bin/bash -Eeu

# Some of these have a build-order dependency
export CYBER_DOJO_REPOS=(\
                  ruby-base \
                  rack-base \
                  sinatra-base \
                  docker-base \
                  web-base \
                  start-points-base \
                  custom-start-points \
                  custom-chooser \
                  exercises-start-points \
                  languages-start-points \
                  avatars \
                  creator \
                  differ \
                  nginx \
                  puller \
                  runner \
                  saver \
                  web \
                  versioner \
                  commander \
        )
