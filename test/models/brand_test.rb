require 'test_helper'

class BrandTest < ActiveSupport::TestCase

  def brand_params
    {name: "Mercedes", origin: "Germany"}
  end

  test "Cannot have a car brand name without that name" do
    brand = Brand.new(brand_params.merge(name: nil))
    assert_not brand.save, "Created a brand name without a name (a paradox ?)"
  end

  test "Cannot have a car brand name without knowing a car brand country of origin" do
    brand = Brand.new(brand_params.merge(origin: nil))
    assert_not brand.save, "Created a brand name without knowing hers country of origin"
  end
  # test "the truth" do
  #   assert true
  # end
end
