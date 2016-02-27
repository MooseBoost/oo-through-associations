class NinetiesTeen
  attr_accessor :name, :cd_collection
  
  def initialize(name)
    @name = name
    @cd_collection = []
  end
  
  def my_cd_collection
    cd_collection.each do |cd|
      puts "#{cd.artist}: #{cd.title}"
    end
  end
  
  def buy_cd(cd)
    cd_collection << cd
    cd.teen = self
    new_coupon = Coupon.new
    cd.coupon = new_coupon
    new_coupon.cd = cd
  end
  
  def my_coupons
    cd_collection.collect do |cd|
      cd.coupon
    end
  end  
end