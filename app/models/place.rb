class Place < ApplicationRecord
	belongs_to :user
	has_many :comments, dependent: :destroy
	has_many :photos
	
	validates :name, presence: true, length: { minimum: 3 }
	validates :address, :description, presence: true
	geocoded_by :address
	after_validation :geocode

end
