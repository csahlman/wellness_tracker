class DashboardsController < ApplicationController
  
  def index
    @trackers = current_user.trackers        
  end

end