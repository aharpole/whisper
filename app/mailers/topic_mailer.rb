class TopicMailer < ApplicationMailer
  def new_topic(topic, recipients)
    @topic = topic
    mail(to: recipients, subject: "New Whisper topic in #{topic.room.name}")
  end
end
