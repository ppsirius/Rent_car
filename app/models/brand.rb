class Brand < ActiveRecord::Base

  validates :name, :origin , presence: true
end
