require "#{Rails.root}/lib/news_scrapers/runner"

class NewsScrapeWorker
  include Sidekiq::Worker

  def perform
    runner = NewsScrapers::Runner.new
    runner.run Settings.news_scrapers
  end
end
