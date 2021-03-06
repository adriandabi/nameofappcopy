if Rails.env.production?
  # https://devcenter.heroku.com/articles/heroku-redis#connecting-in-rails
	$redis = Redis.new(url: ENV["REDIS_URL"])
else
  $redis = Redis.new(host: 'localhost', port: 6379)
  # This object can be used to run commands in controllers as follows:
  # $redis.sadd("user_#{self.id}_friends", user.id)
end
