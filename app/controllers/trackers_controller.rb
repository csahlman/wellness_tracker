class TrackersController < ApplicationController

  def new
    @tracker = Tracker.new    
  end

  def create
    @tracker = current_user.trackers.build(tracker_params)
    if @tracker.save
      redirect_to @tracker, notice: "Wellness Tracker successfully created"
    else
      render :new 
    end
  end

  def show
    
  end

  private

    def tracker_params
      params[:tracker].permit(:name, :description, :current_weight, :goal_weight, :happiness_index)
    end

end