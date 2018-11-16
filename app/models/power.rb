class Power < ApplicationRecord
	has_many :god_powers
	has_many :gods, through: :god_powers
end