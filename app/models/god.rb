class God < ApplicationRecord
  has_many :bookings, { dependent: :destroy }
  has_many :god_powers
  has_many :powers, through: :god_powers
  belongs_to :user

  validates :name, presence: true, uniqueness: true
  validates :location, :photo, :price, presence: true
  mount_uploader :photo, PhotoUploader
end

