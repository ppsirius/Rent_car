class Rent < ActiveRecord::Base

  belongs_to :car, counter_cache: true
  belongs_to :client

end
