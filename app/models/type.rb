class Type < ActiveRecord::Base

  validates :name, :type_id, :car_class_id, presence: true

end
