class God < ApplicationRecord
  has_many :bookings, dependent: :destroy
  belongs_to :user

  validates :name, presence: true, uniqueness: true
  validates :location, :photo, :price, presence: true
  mount_uploader :photo, PhotoUploader
end

