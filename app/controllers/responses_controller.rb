class ResponsesController < ApplicationController
  def create
    @response = Response.create(response_params)
    redirect_to topic_path @response.topic, notice: "Response added!"
  end
  
  private def response_params
    params.require(:response).permit(:topic_id, :detail)
  end
end
