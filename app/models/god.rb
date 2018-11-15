class God < ApplicationRecord
  include PgSearch
  pg_search_scope :global_search,
    against: [ :name, :location, :description ],
    using: {
      tsearch: { prefix: true }
    }

  has_many :bookings, dependent: :destroy, through: :bookings
  belongs_to :user

  validates :name, presence: true, uniqueness: true
  validates :location, :photo, :price, presence: true
  mount_uploader :photo, PhotoUploader
end
