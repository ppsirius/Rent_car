class CarClass < ActiveRecord::Base
  validates :name, presence: true
end
