class CheckinsController < ApplicationController

  def index
  end

def new
    @checkin = Checkins.new
  end

def create
  @checkin = Checkin.new(checkin_params)
  if @checkin.save
    redirect_to @checkin
  else
    render 'new'
  end
end
end


