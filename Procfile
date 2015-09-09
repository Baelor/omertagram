redis:       redis-server vendor/redis/redis.conf
sidekiq:     bundle exec sidekiq
web:         bundle exec unicorn -p $PORT -c ./config/unicorn.rb
bot:         bundle exec rake omertagram:run