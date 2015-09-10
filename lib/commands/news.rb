module Commands
  class News < Commands::Base
    def execute
      chat = current_chat
      if chat.news
        msg = []
        msg << I18n.t('commands.news.latest_news')
        news = []
        ::News.all.order(posted_at: :desc).limit(5).find_each do |n|
          news << n.text
        end
        msg << news.join("\n---------------------------------------\n")
        msg << I18n.t('commands.news.unsubscribe')
        reply msg
      else
        chat.news = true
        chat.save
        reply I18n.t 'commands.news.subscribed'
      end
    end
  end
end
