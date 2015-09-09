namespace :omertagram do
  desc "run the telegram bot"
  task run: :environment do
    require "#{Rails.root}/lib/bot"
    bot = Bot.new
    bot.run
  end

end
