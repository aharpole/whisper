class Membership < ActiveRecord::Base
  belongs_to :member
  belongs_to :room
end
