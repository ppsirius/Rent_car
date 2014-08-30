class Client < ActiveRecord::Base

  has_many :cars, through: :rents

	validates :name, :surname, :age, :doc_type, :doc_number, presence: true
	validates :age, numericality: true, inclusion: {in: 18..80}
	validates :doc_number, uniqueness: true
end
