class Ghouse < ActiveRecord::Base
	has_many :conditions, dependent: :destroy

	validates :name, presence: true, length: { maximum: 50 }, uniqueness: true
	validates :address, presence: true, length: { maximum: 50 }
	has_secure_password
  	validates :password, length: { minimum: 6 }



end
