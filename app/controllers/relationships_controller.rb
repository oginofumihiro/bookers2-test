class RelationshipsController < ApplicationController
before_action :set_user

  def create
    relationship = Relationship.new
    relationship.user_id = current_user.id
    relationship.follow_id = params[:follow_id]
    relationship.save
    redirect_to request.referer
  end

  def destroy
    current_user.unfollow(@user)
    redirect_to request.referer
  end

  private
  def set_user
    @user = User.find(params[:follow_id])
  end

end
