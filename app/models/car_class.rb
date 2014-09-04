class CarClass < ActiveRecord::Base
  has_many :types
  validates :name, presence: true
end
