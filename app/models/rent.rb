class Rent < ActiveRecord::Base

  belongs_to :car
  belongs_to :client

  delegate :full_name, to: :client, allow_nil: true
  delegate :type_name, to: :car, allow_nil: true
  delegate :type_brand_name, to: :car, allow_nil: true

  scope :by_name, -> {joins(:client).order("clients.name")}
  scope :by_type, -> {joins(:car => [:type]).select('rents.*, cars.type_id, types.name').order("types.name")}
  scope :by_params, -> (params) { order(params)}

  def display_date
    created_at.strftime("%d/%m/%Y at %R")
  end

  def rented
    if active == true
      "Rented"
    else
      "Returned"
  end 

  end
end
