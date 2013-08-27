class User < ActiveRecord::Base
		has_many :adherentes


		validates :name, :password,  presence: true, length: { maximum: 150 }
		validates :password, length: { minimum: 6 }
		
		VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  		validates :email, format: { with: VALID_EMAIL_REGEX },
  							uniqueness: true,
  							presence: true
		
		before_save { email.downcase! }

		has_secure_password

		
end
