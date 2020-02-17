class BarsController < ApplicationController
  def index
    @bars = Bar.all
  end

  def new
    @bar = Bar.new
  end

  def create
    @bar = Bar.new(bar_params)
    @bar.save
    redirect_to bar_path(@bar)
  end

  def show
  end

  private

  def bar_params
    params.require(:bar).permit(:name, :description, :capacity, :address, :category, :opening_hours, :opening_days)
end
