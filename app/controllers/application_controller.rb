class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session
  # include Rails::Auth::ControllerMethods
  
  # def x509_certificate_cn
  #   credentials[:x509].try[:cn]
  # end
end
