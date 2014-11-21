class Vote < ActiveRecord::Base
	belongs_to :challenge

	validates :mail, presence: true
	validates :mail, format: { with: EmailAddressValidator::Regexp::ADDR_SPEC}

	def self.count_mails(id)
		Vote.where('challenge_id = ?', id).count	
	end
end
