class God < ApplicationRecord
  has_many :bookings, dependent: :destroy
  belongs_to :user

  validates :name, presence: true, uniqueness: true
  validates :location, presence: true
  validates :price, presence: true
end
