class Admin::AppsController < ApplicationController
  def show
    @app = App.find_by_id(params[:id])
  end
end
