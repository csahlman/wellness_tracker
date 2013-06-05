class DaysController < ApplicationController

  def new
    @tracker = current_user.trackers.find(params[:tracker_id])
    @day = @tracker.days.find_by_date(params[:date]) || Day.new
  end

  def create
    @tracker = current_user.trackers.find(params[:tracker_id])
    @day = @tracker.days.new(day_params)
    if @day.save
      redirect_to @tracker, notice: "Day Saved"
    else
      render :new
    end
  end

  private

    def day_params
      params[:day].permit(:hours_of_sleep, :hours_of_work, :hours_of_leisure, :minutes_spent_exercising,
        :happiness_index, :calories_consumed, :alcoholic_drinks)
    end
end