require "application_responder"

class ApplicationController < ActionController::Base
  self.responder = ApplicationResponder
  respond_to :html, :xml, :json

  protect_from_forgery

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_path
  end
end
