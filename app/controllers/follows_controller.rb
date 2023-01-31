class FollowsController < ApplicationController
  before_action :set_user, except: %i[accept_follow decline_follow]
  before_action :set_follow_request, only: %i[accept_follow decline_follow]

  def accept_follow
    @follow_request.accept
    redirect_back(fallback_location: root_path)
  end

  def cancel_request
    current_user.cancel_request(@user)
    redirect_back(fallback_location: root_path)
  end

  def decline_follow
    @follow_request.destroy
    redirect_back(fallback_location: root_path)
  end

  def follow
    current_user.follow(@user)
    redirect_back(fallback_location: root_path)
  end

  def unfollow
    current_user.unfollow(@user)
    redirect_back(fallback_location: root_path)
  end

  private

  def set_follow_request
    @follow_request = Follow.find(params[:follow_id])    
  end

  def set_user
    @user = User.find(params[:user_id])    
  end
end