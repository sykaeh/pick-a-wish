# == Schema Information
#
# Table name: members
#
#  group_id :integer
#  user_id  :integer
#  email    :string
#  invited  :datetime
#  accepted :datetime
#  declined :datetime
#  active   :boolean          default(FALSE), not null
#  id       :integer          not null, primary key
#

require 'test_helper'

class MemberTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
