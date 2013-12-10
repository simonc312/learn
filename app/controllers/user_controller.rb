class UserController < ApplicationController

  before_filter :authenticate_user!
  def edit
    @user = current_user
    @email = @user.email

  end

end
