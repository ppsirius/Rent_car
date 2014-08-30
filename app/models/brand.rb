class Brand < ActiveRecord::Base

  has_many :types
  has_many :cars, through: :types

  validates :name, :origin , presence: true

end
