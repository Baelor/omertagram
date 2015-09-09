module Commands
  class Start < Commands::Base
    def execute
      current_chat
      reply I18n.t 'commands.start.welcome'
    end
  end
end
