class Room < ActiveRecord::Base
  has_many :members, through: :memberships
  has_many :topics
  validates_uniqueness_of :slug
    
  def email_addresses
    members.pluck(:email)
  end
end
