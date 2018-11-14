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
      redirect_to gods_path, notice: 'Your booking is confirmed. You will recieved an email with the details'
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
