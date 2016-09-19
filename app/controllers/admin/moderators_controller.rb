class Admin::ModeratorsController < ApplicationController

  def index
    @moderator = Moderator.all
  end

end