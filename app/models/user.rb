class User < ApplicationRecord

  def show
    @booking = Booking.new
    @pricing = @nb_user.count.daily_pricing
  end
end
