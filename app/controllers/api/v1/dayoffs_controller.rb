class Api::V1::DayoffsController < ApplicationController

  before_action :set_dayoff, only: %i[show] # show update destroy

  def index
    @dayoffs = Dayoff.all 
    render json: @dayoffs
  end

  def show
    render json: @dayoff
  end

private

def set_dayoff
  @dayoff = Dayoff.find(params[:id])
end

def dayoff_params
  params.require(:dayoff).permit(:day, :description)
end

end