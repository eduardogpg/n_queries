class Country < ActiveRecord::Base
	has_many :states

	def self.get_state
		self.joins(:states).select("countries.name, states.name as state_name")
	end
end
