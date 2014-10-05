class Client < ActiveRecord::Base

  has_many :cars, through: :rents

	validates :name, :surname, :age, :doc_type, :doc_number, presence: true
	validates :age, numericality: true, inclusion: {in: 18..80}
	validates :doc_number, uniqueness: true

  scope :ordered, -> (what, how) { order("#{what} #{how}") }

  def full_name
    name + ' ' + surname 
  end
  def self.sorted(what, how)
    if what
      Client.ordered(what, how)
    else
      Client.all
    end
  end

end
