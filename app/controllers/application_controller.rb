class ApplicationController < ActionController::Base
  before_action :authenticate

  private

  def authenticate
    authenticate_or_request_with_http_basic do |username, password|
      username == Rails.application.credentials.authentication[:username] &&
      password == Rails.application.credentials.authentication[:password]
    end
  end
end
