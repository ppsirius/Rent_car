class Rent < ActiveRecord::Base

  belongs_to :car
  belongs_to :client

  delegate :full_name, to: :client, allow_nil: true
  delegate :type_name, to: :car, allow_nil: true
  delegate :type_brand_name, to: :car, allow_nil: true

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
