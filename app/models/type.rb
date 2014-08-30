class Type < ActiveRecord::Base

  validates :name, :tupe_id, :class_id, presence: true

end
