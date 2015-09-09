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

require 'test_helper'

class NewsTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
