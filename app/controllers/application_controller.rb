class ApplicationController < ActionController::Base
  skip_forgery_protection
  #before_action(:force_user_sign_in)
end
