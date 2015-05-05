class Member < ActiveRecord::Base
  has_many :memberships
  has_many :rooms, through: :memberships
end
