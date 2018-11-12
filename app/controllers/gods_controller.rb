class GodsController < ApplicationController
	skip_before_action :authenticate_user!, only: :index
	has_many :bookings
	belongs_to :user
end
