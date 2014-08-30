class Type < ActiveRecord::Base

  validates :name, :brand_id, :car_class_id, presence: true

end
