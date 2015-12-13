# == Schema Information
#
# Table name: items
#
#  id            :integer          not null, primary key
#  name          :string
#  description   :string
#  list_id       :integer
#  claimed_on    :datetime
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  claimed_by_id :integer
#  bought        :boolean          default(FALSE)
#

require 'test_helper'

class ItemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
