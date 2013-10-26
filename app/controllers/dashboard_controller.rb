class DashboardController < ApplicationController

	before_filter :authenticate_user!
  def index

  end

  def apply_client
  end

  def apply_volunteer
  end
  

end
