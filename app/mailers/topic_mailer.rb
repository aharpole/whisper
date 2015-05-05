class TopicMailer < ApplicationMailer
  default from: "Whisper <not_a_real_email@whisper.fullscreen.net>"
  
  def new_topic(topic, recipients)
    @topic = topic
    mail(to: recipients, subject: "New Whisper topic in ##{topic.room.slug}")
  end
end
