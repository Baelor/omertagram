namespace :omertagram do
  desc "run the telegram bot"
  task run: :environment do
    require "#{Rails.root}/lib/omertagram_bot"
    bot = OmertagramBot.new
    bot.run
  end

end
