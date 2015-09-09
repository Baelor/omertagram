# == Schema Information
#
# Table name: news
#
#  id                    :integer          not null, primary key
#  text                  :string
#  posted_at             :datetime
#  news_source           :integer
#  news_source_reference :string
#  created_by            :integer
#  updated_by            :integer
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#

class News < ActiveRecord::Base
  enum news_source: [ :omerta, :omerta_beyond_news, :omerta_beyond_extension_update, :edo, :manual ]
  after_create do |n|
    n.delay.broadcast
  end

  def broadcast
    bot = Bot.new
    bot.run_client do |client|
      Chat.where(news: true).find_each do |c|
        client.api.sendMessage(chat_id: c.telegram_id, text: text)
      end
    end
  end
end
