class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :authenticate_user!
#  include Authentication
  rescue_from CanCan::AccessDenied do |exception|
    flash[:error] = 'Acesso Negado.'
    redirect_to root_url
  end
end
