class Planner < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :users, through: :bookings
  has_many_attached :photos
  has_many :chatrooms
  has_many :messages
  has_many :users, through: :chatrooms
  has_one_attached :profile_photo
  geocoded_by :citys
end
