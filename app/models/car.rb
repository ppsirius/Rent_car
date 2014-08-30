class Car < ActiveRecord::Base

  belongs_to :type

  validates :state, :car_paint, :plate, :production_year, :type_id, presence: true
  validates :plate, uniqueness: true

  def origin
    type.brand.origin
  end

end
