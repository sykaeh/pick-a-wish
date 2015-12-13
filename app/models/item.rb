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

class Item < ActiveRecord::Base
  belongs_to :list

  belongs_to :claimed_by, class_name: "User"

  validates :name, presence: true

  def can_pick(user)
    (self.claimed_by == nil && self.claimed_on == nil) && ! self.list.creator?(user)
  end

  def can_release(user)
    self.claimed_by == user
  end

end
