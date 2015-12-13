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
#  active   :boolean
#

class Member < ActiveRecord::Base
  belongs_to :user
  belongs_to :group

  def name
    if self.user
      self.user.email
    else
      self.email
    end
  end

  def status
    if self.active
      "Active"
    elsif self.declined
      "Declined"
    elsif self.invited
      "Invited"
    else
      "Unknown"
    end
  end
end
