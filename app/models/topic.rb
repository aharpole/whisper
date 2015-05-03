class Topic < ActiveRecord::Base
  has_many :responses
  belongs_to :room
end
