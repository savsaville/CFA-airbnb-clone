class Room < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :title, presence: true, length: { minimum: 3}
  # validates :description, presence: true

  mount_uploaders :images, RoomUploader
  serialize :images, JSON
end
