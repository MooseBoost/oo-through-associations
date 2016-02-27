class Coupon
  attr_reader :discount
  attr_accessor :cd

  def initialize
    @discount = "$10 off!"
  end
end