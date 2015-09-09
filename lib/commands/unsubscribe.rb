module Commands
  class Unsubscribe < Commands::Base
    def execute
      chat = current_chat
      if chat.news
        chat.news = false
        chat.save
        reply I18n.t 'commands.unsubscribe.unsubscribed'
      else
        reply I18n.t 'commands.unsubscribe.not_subscribed'
      end
    end
  end
end
