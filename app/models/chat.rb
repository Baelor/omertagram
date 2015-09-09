# == Schema Information
#
# Table name: chats
#
#  id          :integer          not null, primary key
#  telegram_id :integer
#  news        :boolean
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Chat < ActiveRecord::Base
end
