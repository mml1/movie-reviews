class Review < ApplicationRecord
    EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i

	validates :title, :email, :rating, presence:true
	validates :email, uniqueness: { case_sensitive: false }, format: { with: EMAIL_REGEX }

	@errors = ''

	before_save do
    	self.email.downcase!
  	end

end
