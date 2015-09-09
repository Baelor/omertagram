module Commands
  class News < Commands::Base
    def execute
      chat = current_chat
      if chat.news
        reply I18n.t 'commands.news.latest_news'
        # TODO: send 5 last news updates
        reply I18n.t 'commands.news.unsubscribe'
      else
        chat.news = true
        chat.save
        reply I18n.t 'commands.news.subscribed'
      end
    end
  end
end
