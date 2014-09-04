class Car < ActiveRecord::Base

  belongs_to :type
  has_many :clients, through: :rents


  validates :state, :car_paint, :plate, :production_year, :type_id, presence: true
  validates :plate, uniqueness: true


	state_machine :state, initial: :available do

	event :rent do
	 transition :available => :rented
	end

  event :return do
   transition :rented => :available
  end

  event :clean do
   transition :available => :clean, :serviced => :clean
  end

	event :service do
	 transition :available => :serviced, :clean => :serviced
	end

  event :available do
    transition :clean => :available, :serviced => :available, :rented => :available
  end

end


  def to_label
    "#{type.brand.name} #{type.name}"
  end

end
