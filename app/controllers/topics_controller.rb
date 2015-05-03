class TopicsController < ApplicationController
  def new
    @topic = Topic.new room_id:params[:room_id]
  end
  
  def create
    @topic = Topic.create(topic_params)
    render :show
  end
  
  def show
    @topic = Topic.includes(:responses).find params[:id]
  end
  
  private def topic_params
    params.require(:topic).permit(:room_id, :title, :detail, :email_to_room)
  end
end
