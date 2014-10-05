class Car < ActiveRecord::Base

  belongs_to :type
  has_many :clients, through: :rents

  validates :state, :car_paint, :plate, :production_year, :type_id, presence: true
  validates :plate, uniqueness: true

  scope :available, -> { where(state: "available") }

  scope :sort_by,   ->( what ) do
    if what
      if what == 'type'
        joins(:type).select('cars.*, types.name').order("types.name")
      elsif what == 'brand'
        joins(:type => [:brand]).select('cars.*, types.name, brands.name').order("brands.name")
      else 
        Car.order(what)
      end
    else
      Car.all
    end
  end

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

  def type_name
    if type 
      type.name
    else
      "no type"
    end
  end
  

  def type_brand_name
    if type && type.brand
      type.brand.name
    else
      "no brand"
    end
  end


  def to_label
    "#{type.brand.name} #{type.name}"
  end

end
