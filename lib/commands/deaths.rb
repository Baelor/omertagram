require 'action_view'
require 'action_view/helpers'
module Commands
  class Deaths < Commands::Base
    include ActionView::Helpers::DateHelper

    def execute
      family = argument_string
      if family.blank?
        scope = version.users
      else
        family = version.families.where(name: argument_string.titleize).first
        if family.nil?
          reply I18n.t 'family_not_found'
          return
        end
        scope = version.users.where(death_family: family.name)
      end

      deaths = [ I18n.t('commands.deaths.header') ]
      scope.where(alive: false).order('death_date DESC').limit(10).each do |user|
        death = "#{user.name} / #{user.rank.humanize} / #{user.death_family}"
        death += '*' if !user.death_family.blank? && user.died_without_family
        death += " / #{user.family_role.to_s.humanize} / #{time_ago_in_words(user.death_date)}"
        deaths << death
      end
      reply deaths
    end
  end
end
