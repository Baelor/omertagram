module Commands
  class User < Commands::Base
    include ActionView::Helpers::DateHelper
    include ActionView::Helpers::NumberHelper

    def execute
      if argument_string.blank?
        reply I18n.t 'commands.user.usage'
        return
      end

      user = version.users.where(name: argument_string.titleize).first
      if user.nil?
        reply I18n.t 'user_not_found'
        return
      end

      msg = [
        I18n.t('commands.user.line1', name: user.name,
                                      rank: user.rank.humanize,
                                      online_percentage: number_to_percentage(user.online_percentage, precision: 2),
                                      honor_points: user.honor_points),
        I18n.t('commands.user.line2', family: user.family.name,
                                      role: user.family_role.humanize,
                                      last_seen: time_ago_in_words(user.last_seen))
      ]
      reply msg
    end
  end
end
