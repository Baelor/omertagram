require 'news_scrapers/omerta_beyond'

module NewsScrapers
  class Runner
    def run(scrapers)
      NewsScrapers::OmertaBeyond.new.scrape if scrapers.include? :omerta_beyond
    end
  end
end
