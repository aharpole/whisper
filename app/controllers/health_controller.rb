class HealthController < ActionController::Base
  def ping
    head :ok
  end
end