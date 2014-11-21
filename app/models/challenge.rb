class Challenge < ActiveRecord::Base
	
	mount_uploader :poster, PosterUploader

	has_many :votes, dependent: :destroy #relaciones

	validates :title, presence: true
	validates :description, length: {minimum: 10}
	

end
