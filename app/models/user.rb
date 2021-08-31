class User < ApplicationRecord

  def show
    @booking = Booking.new
  end
end
