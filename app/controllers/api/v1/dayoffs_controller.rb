class Api::V1::DayoffsController < ApplicationController

  before_action :set_dayoff, only: %i[show] # show update destroy

  def index
    @dayoffs = Dayoff.all 
    render json: @dayoffs
  end

  def show
    render json: @dayoff
  end

  def create
    @dayoff = Dayoff.new(dayoff_params)
    if @dayoff.save
      render json: @dayoff, status: :created, location: api_v1_dayoff_url(@dayoff)
    else
      render json: @dayoff.errors, status: :unprocessable_entity
    end
  end

private

def set_dayoff
  @dayoff = Dayoff.find(params[:id])
end

def dayoff_params
  params.require(:dayoff).permit(:day, :description)
end

end