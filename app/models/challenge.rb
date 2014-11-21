class Challenge < ActiveRecord::Base
	
	has_many :votes, dependent: :destroy #relaciones

	validates :title, presence: true
	validates :description, length: {minimum: 10}

end
