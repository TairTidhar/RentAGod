class BookingsController < ApplicationController
  def new
    @god = God.find(params[:god_id])
    @booking = Booking.new
  end

  def create
    @god = God.find(params[:god_id])
    @booking = Booking.new(booking_params)
    @booking.god = @god

    if @booking.save
      redirect_to god_path(@god)
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
