
class Market
  attr_reader :name, :vendors

  def initialize(name)
    @name = name
    @vendors = []
  end

  def add_vendor(vendor)
    @vendors << vendor
  end

  def vendor_names
    names = []
    @vendors.each do |vendor|
      names << vendor.name
    end
    names
  end

  def vendors_that_sell(produce)
    sellers = []
    @vendors.each do |vendor|
      # binding.pry
      if vendor.check_stock(produce) > 0 
        sellers << vendor
      end
    end
    sellers
  end
end
