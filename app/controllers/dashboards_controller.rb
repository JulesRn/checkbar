class DashboardsController < ApplicationController

  def profile
    @user = current_user
    skip_authorization
  end

end
