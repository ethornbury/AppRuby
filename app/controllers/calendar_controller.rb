class CalendarController < ApplicationController
  def show
     @date = params[:date] ? Date.parse(params[:date]) : Date.today
     #@events_by_date = Event.group_by(&:date)
  end
  
#  def create
#    @events_by_date = Event.group_by(&:date)
#  end
end
