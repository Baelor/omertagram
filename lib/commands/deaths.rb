require 'action_view'
require 'action_view/helpers'
module Commands
  class Deaths < Commands::Base
    include ActionView::Helpers::DateHelper

    def scoped_users
      family = argument_string
      if family.blank?
        version.users
      else
        family = version.families.where(name: argument_string.titleize).first
        if family.nil?
          reply I18n.t 'family_not_found'
          return
        end
        version.users.where(death_family: family.name)
      end
    end

    def execute
      deaths = scoped_users.where(alive: false).order('death_date DESC').limit(10)
      if deaths.empty?
        reply I18n.t 'commands.deaths.no_deaths'
        return
      end
      deaths_msg = [ I18n.t('commands.deaths.header', count: deaths.count) ]
      deaths.each do |user|
        death = "[#{user.rank_short}] #{user.name}"
        death += "@#{user.death_family.truncate(4, omission: '')}" unless user.death_family.blank?
        death += " #{time_ago_in_words(user.death_date)}"
        deaths_msg << death
      end
      reply deaths_msg
    end
  end
end
