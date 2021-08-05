class BookingsController < ApplicationController

  def new
    @booking = Booking.new
  end

  def show
    @booking = Booking.new
    @booking = Booking.find(params[:id])
    @pricing = @booking.daily_pricing
  end

  def create
    @booking = Booking.new(booking_params)
    booking_period = (@booking.date_end - @booking.date_beginning).to_i
    @booking.booking_pricing = @nb_user.count.daily_pricing * booking_period
    if @booking.save
      redirect_to # pages_home_path     ou      booking_path(@booking)
    else
      render :new
    end
  end

  def index
    @booking = Booking.new
    @booking_requests_received = []
    booking.each do |booking|
      booking.each {|book| @booking_requests_received << book}
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
  end

  private

  def booking_params
    params.require(:booking).permit(:city, :nb_user, :daily_pricing, :date_beginning, :date_end)
  end
end
