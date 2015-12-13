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
#

class Item < ActiveRecord::Base
  belongs_to :list

  has_one :claimed_by, class_name: "User", :foreign_key => "claimed_by_id"

  validates :name, :list, presence: true

end
