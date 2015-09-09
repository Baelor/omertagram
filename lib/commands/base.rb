module Commands
  class Base
    attr_accessor :message
    attr_accessor :bot

    def reply(text)
      text = text.join("\n") if text.is_a? Array
      bot.api.sendMessage(chat_id: @message.chat.id, text: text)
    end

    def argument_string
      @message.text.split(' ').drop(1).join(' ')
    end

    def version
      OmertaLogger::Domain.find_by(name: Settings.domain).versions.current
    end

    def current_chat
      Chat.find_or_create_by(telegram_id: @message.chat.id)
    end
  end
end
