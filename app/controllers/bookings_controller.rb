class BookingsController < ApplicationController

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new
    booking_period = (@booking.date_end - @booking.date_beginning).to_i
    @booking.booking_pricing = @nb_user.count.daily_pricing * booking_period
    if @booking.save
      redirect_to pages_home_path
    else
      render :new
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
  end
end
