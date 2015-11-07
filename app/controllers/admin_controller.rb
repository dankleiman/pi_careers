class AdminController < ApplicationController
  before_action do
    redirect_to :new_user_session unless current_user && current_user.admin?
  end

  def index
  end
end
