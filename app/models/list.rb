# == Schema Information
#
# Table name: lists
#
#  id          :integer          not null, primary key
#  name        :string
#  description :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  date        :date
#

class List < ActiveRecord::Base
  has_many :items
  has_and_belongs_to_many :groups
  has_and_belongs_to_many :users

  accepts_nested_attributes_for :items,
    :allow_destroy => true,
    :reject_if     => :all_blank

  validates :name, :date, presence: true
  validates :date, date: true
  validates_associated :items

  def creator?(user)
    self.users.pluck(:id).include?(user.id)
  end

  def visible_items(user)
    if self.creator?(user)
      self.items
    else
      self.items.where('claimed_by_id = ? or claimed_by_id is NULL', user.id)
    end
  end
end
