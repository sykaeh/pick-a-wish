class MainController < ApplicationController

  def index

    @pending_invitations = Member.where(email: current_user.email).where(active: false).where(declined: nil)
    @groups = current_user.groups
    @own_lists = current_user.lists

    group_lists = []
    @groups.each do |g|
      (group_lists << g.lists).flatten!
    end
    @other_lists = group_lists - @own_lists

  end

  def shopping_list
    @items = Item.where(claimed_by: current_user).where(bought: false)
    @bought_items = Item.where(claimed_by: current_user).where(bought: true)
  end


end
