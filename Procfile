
worker: env QUEUE="queue" bundle exec rake environment resque:work
web: bundle exec puma -t 5:5 -p ${PORT:-9292} -e ${RACK_ENV:-development}