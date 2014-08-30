class Car < ActiveRecord::Base

  validates :state, :car_paint, :plate, :production_year, :type_id, presence: true
  validates :plate, uniqueness: true

end
