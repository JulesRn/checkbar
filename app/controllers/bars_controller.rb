class BarsController < ApplicationController

  def index
    @bars = Bar.all
  end

  def new
    @bar = Bar.new
  end

  def create
    @bar = Bar.new(bar_params)
    @bar.user = current_user
    @bar.opening_days = params[:days].select {|k,v|v =='1'}.keys
    @bar.save!
    redirect_to bar_path(@bar)
  end

  def show
    @reservation = Reservation.new
    @bar = Bar.find(params[:id])
  end

  private

  def bar_params
    params.require(:bar).permit(:name, :description, :capacity, :address, :category, :opening_hours, :opening_days, :closing_hours, photos: [])
  end
end
