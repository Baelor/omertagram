module Commands
  class Help < Commands::Base
    def execute
      commands = [
        I18n.t('commands.help.news'),
        I18n.t('commands.help.user'),
        I18n.t('commands.help.highranks'),
        I18n.t('commands.help.deaths'),
        I18n.t('commands.help.follow'),
        I18n.t('commands.help.unfollow'),
        I18n.t('commands.help.unsubscribe'),
        I18n.t('commands.help.homepage')
      ]

      reply commands.join("\n")
    end
  end
end
