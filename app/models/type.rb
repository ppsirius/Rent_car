class Type < ActiveRecord::Base

  belongs_to :car_class

  validates :name, :brand_id, :car_class_id, presence: true

end
 