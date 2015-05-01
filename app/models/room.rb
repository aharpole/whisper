class Room < ActiveRecord::Base
  has_many :members, through: :room_members
  has_many :topics
end
