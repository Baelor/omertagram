module Commands
  class Highranks < Commands::Base
    COMMAND = :hr
    def execute
      if argument_string.blank?
        reply I18n.t 'commands.highranks.usage'
        return
      end

      family = version.families.where(name: argument_string.titleize).where(alive: true).first
      if family.nil?
        reply I18n.t 'family_not_found'
        return
      end

      highranks = family.users.where("rank > #{OmertaLogger::User.ranks[:soldier]}")
      hrcount = highranks.order('rank DESC').group(:rank).count
      hrcount = hrcount.map { |k, v| "#{OmertaLogger::User.ranks.key(k).humanize}: #{v}" }
      reply hrcount.join(' ')
      reply I18n.t 'commands.highranks.total_members', count: family.user_count
    end
  end
end
