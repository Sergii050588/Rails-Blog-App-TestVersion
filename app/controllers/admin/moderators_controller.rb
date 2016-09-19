class Admin::ModeratorsController < ApplicationController

  def index
    @moderator = Moderator.all
  end

  def edit
    @moderator = Moderator.find(params[:id])
  end

  def update
      @moderator = Moderator.find(params[:id])
      if @moderator.update(moderator_params)
        flash[:notice] = "Moderator was succesfully updated"
        redirect_to admin_moderators_url
      else
        flash[:alert] = "There was a problem"
        render 'edit'
      end
  end


  private

  def moderator_params
    params.require(:moderator).permit(:id, :fullname,:username, :password)
  end
end