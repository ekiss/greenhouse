class Condition < ActiveRecord::Base
	belongs_to :ghouse
	default_scope -> { order('created_at DESC') }
	validates :ghouse_id, presence: true

	def self.temp_on(date)
		where("created_at = ?", date)
	end
end
