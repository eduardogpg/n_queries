class Country < ActiveRecord::Base
	has_many :states

	def self.get_state
		self.joins(:states).select("countries.name, countries.id as countrie_id, states.name as state_name")
	end
end
