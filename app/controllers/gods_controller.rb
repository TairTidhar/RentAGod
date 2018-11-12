class GodsController < ApplicationController
	has_many :bookings
	belongs_to :user
end
