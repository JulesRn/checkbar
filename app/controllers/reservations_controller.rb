class ReservationsController < ApplicationController

  def create
    @bar = Bar.find(params[:bar_id])
    @reservation = Reservation.new(reservation_params)
    authorize @reservation
    @reservation.date = Date.parse(params[:date])
    @reservation.user = current_user
    @reservation.bar = @bar
    @reservation.status = "En attente"
    if @reservation.save!
      redirect_to bar_path(@bar)
    else
      render "bars/show"
    end
  end

  def new
     @bar = Bar.find(params[:bar_id])
     @reservation = Reservation.new
     authorize @reservation
   end

  def destroy
    @reservation = Reservation.find(params[:id])
    authorize @reservation
    @reservation.destroy
    redirect_to bar_path(@reservation.bar)
  end

  def change_status
    @reservation = Reservation.find(params[:id])
    authorize @reservation
    @reservation.status = "Accepté"
  end

  private

  def reservation_params
    params.require(:reservation).permit(:bar_id, :user_id, :number_of_guest, :hours, :status)
  end
end
