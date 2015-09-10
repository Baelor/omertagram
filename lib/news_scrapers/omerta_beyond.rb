module NewsScrapers
  class OmertaBeyond
    include ActionView::Helpers::SanitizeHelper

    FEED_URL = 'http://feeds.feedburner.com/OmertaNews'

    def scrape
      feed = Feedjira::Feed.fetch_and_parse FEED_URL
      feed.entries.each do |e|
        news = News.find_by(news_source: News.news_sources[:omerta_beyond_news], news_source_reference: e.url) || News.new
        news.news_source = :omerta_beyond_news
        news.news_source_reference = e.url
        news.text = "#{e.title}\n#{strip_tags(e.summary).strip}\nRead more at: #{e.url}"
        news.save
      end
    end
  end
end
