class Type < ActiveRecord::Base

  belongs_to :car_class
  belongs_to :brand
  has_many :cars

  validates :name, :brand_id, :car_class_id, presence: true

end
 