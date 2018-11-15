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
      redirect_to booking_path(@booking), notice: 'Your booking is confirmed. Check your inbox - you will recieve an email with the details'
    else
      render "gods/show"
    end
  end

  def show
    @booking = Booking.find(params[:id])

    respond_to do |format|
      format.html { render :show }
      format.pdf {
        render :pdf => "show", :layout => 'pdf.html'
      }
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
