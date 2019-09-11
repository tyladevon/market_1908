
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
    @vendors.find_all do |name|
    # binding.pry
      names << name
  end
  names
end 
end
