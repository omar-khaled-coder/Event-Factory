class Planner < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :users, through: :bookings
  has_many_attached :project_photos
  has_many :chatrooms
end
