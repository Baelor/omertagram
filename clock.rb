require 'clockwork'
require './config/boot'
require './config/environment'

Dir['app/workers/*'].each { |f| load f }

module Clockwork
  handler do |job|
    puts "Running #{job}"
  end

  every(30.seconds, 'news_scrapers.job') do
    NewsScrapeWorker.perform_async
  end
end
