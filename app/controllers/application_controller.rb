class ApplicationController < ActionController::Base
  skip_before_action :verify_authenticity_token

  def redirect_to_front
    redirect_to 'http://localhost:3001/'
  end
end
