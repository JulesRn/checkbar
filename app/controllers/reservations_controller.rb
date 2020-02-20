class ReservationsController < ApplicationController

  def create
    @bar = Bar.find(params[:bar_id])
    @reservation = Reservation.new(reservation_params)
    @reservation.date = Date.parse(params[:date])
    @reservation.user = current_user
    @reservation.bar = @bar
    if @reservation.save!
      redirect_to bar_path(@bar)
    else
      render "bars/show"
    end
  end

  def new
     @bar = Bar.find(params[:bar_id])
     @reservation = Reservation.new
   end

  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy
    redirect_to bar_path(@reservation.bar)
  end

  private

  def reservation_params
    params.require(:reservation).permit(:bar_id, :user_id, :number_of_guest, :hours)
  end
end
