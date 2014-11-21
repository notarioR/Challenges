class Challenge < ActiveRecord::Base
	
	has_many :votes #relaciones
	
	validates :title, presence: true
	validates :description, length: {minimum: 10}

end
