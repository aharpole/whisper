class Topic < ActiveRecord::Base
  has_many :responses
  belongs_to :room
  after_create :send_email
  
  private def send_email
    if email_to_room?
      TopicMailer.new_topic(self,room.email_addresses).deliver_later
    end
  end
end
