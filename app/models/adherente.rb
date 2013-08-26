class Adherente < ActiveRecord::Base
	belongs_to :user
	validates :nombre, length: { maximum: 140 }
end
