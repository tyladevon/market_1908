require 'minitest/autorun'
require 'minitest/pride'
require './lib/vendor'
require './lib/market'
require 'pry'

class MarketTest < Minitest::Test

  def setup
    @market = Market.new("South Pearl Street Farmers Market")
  end

  def test_it_exists
    assert_instance_of Market, @market
  end

  def test_initialize
    assert_equal "South Pearl Street Farmers Market", @market.name
    assert_equal [], @market.vendors
  end

  def test_case_name
    vendor_1 = Vendor.new("Rocky Mountain Fresh")
    assert_instance_of Vendor, vendor_1

    vendor_1.stock("Peaches", 35)
    vendor_1.stock("Tomatoes", 7)

    vendor_2 = Vendor.new("Ba-Nom-a-Nom")
    assert_instance_of Vendor, vendor_2

    vendor_2.stock("Banana Nice Cream", 50)
    vendor_2.stock("Peach-Raspberry Nice Cream", 25)

    vendor_3 = Vendor.new("Palisade Peach Shack")
    assert_instance_of Vendor, vendor_3

    vendor_3.stock("Peaches", 65)

    @market.add_vendor(vendor_1)
    @market.add_vendor(vendor_2)
    @market.add_vendor(vendor_3)
    assert_equal [vendor_1, vendor_2, vendor_3], @market.vendors
  end

end
