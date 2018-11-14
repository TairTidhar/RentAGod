class BookingsController < ApplicationController
  def new
    @god = God.find(params[:god_id])
    @booking = Booking.new
  end

  def create
    @god = God.find(params[:god_id])
    @booking = Booking.new(booking_params)
    @booking.god = @god
    @booking.user = current_user

    if @booking.save
      redirect_to dashboard_path, notice: 'Your booking is confirmed. Check your inbox - you will recieve an email with the details'
    else
      render "gods/show"
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
