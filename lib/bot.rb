require 'telegram/bot'
class Bot
  def initialize
    Dir["#{Rails.root}/lib/commands/*.rb"].each { |file| load file }
    @commands = {}
    cmdclasses = Commands.constants.map(&Commands.method(:const_get)).grep(Class).reject { |cmd| cmd.name == 'Commands::Base' }
    cmdclasses.each do |cmd|
      if cmd.const_defined? :COMMAND
        @commands[cmd.const_get(:COMMAND)] = cmd.new
      else
        @commands[cmd.name.parameterize.underscore.sub('commands_', '').to_sym] = cmd.new
      end
    end
  end

  def run_client
    Telegram::Bot::Client.run(Rails.application.secrets.telegram_token) { |bot| yield(bot) } if block_given?
  end

  def run
    run_client do |bot|
      @commands.each do |_, cmd|
        cmd.bot = bot
      end

      bot.listen do |message|
        if !message.text.nil? && message.text.start_with?('/')
          command_symbol = symbolize_command(message.text)
          if @commands.key? command_symbol
            cmd = @commands[command_symbol]
            cmd.message = message
            cmd.execute
          else
            bot.api.sendMessage(chat_id: message.chat.id, text: I18n.t('unknown_command'))
          end
        elsif message.chat.is_a? Telegram::Bot::Types::User
          bot.api.sendMessage(chat_id: message.chat.id, text: I18n.t('unknown_message'))
        end
      end
    end
  end

  private

  def symbolize_command(message)
    message[0] = '' if message.length > 1
    # telegram desktop has the tendency to autocomplete commands in groups with @BotName, e.g. /news@OmertaBeyondBot
    # we'll just replace the word after @ following the command
    message = message.sub(/(?<=\w)+@(\w+)/, '')
    message.split.first.parameterize.underscore.to_sym
  end
end
