# == Schema Information
#
# Table name: items
#
#  id          :integer          not null, primary key
#  name        :string
#  description :string
#  list_id     :integer
#  claimed_on  :datetime
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Item < ActiveRecord::Base
  belongs_to :list

  has_one :claimed_by, class_name: "User"
end
