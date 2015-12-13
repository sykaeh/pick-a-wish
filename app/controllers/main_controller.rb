class MainController < ApplicationController

  def index

    @groups = current_user.groups
    @lists = current_user.lists

  end

end
