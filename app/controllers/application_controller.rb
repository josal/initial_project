class ApplicationController < ActionController::Base
  protect_from_forgery
  layout 'application'

  before_filter :authenticate_user!, :except => :home
  
  #before_filter :set_locale

  before_filter :set_locale_from_url

  protected
  # def set_locale
  #   # if params[:locale] is nil then I18n.default_locale will be used
  #   if params[:locale].present?
  #     I18n.locale = params[:locale]
  #     session[:locale] = params[:locale]
  #   else
  #     I18n.locale = session[:locale] || I18n.default_locale
  #   end
  # end
  
  
  
  # def set_locale
  #   requested_locale = params[:locale] || session[:locale] || cookies[:locale] || request.env['HTTP_ACCEPT_LANGUAGE']
  #   session[:locale] = FastGettext.set_locale(requested_locale)
  # end  
  
end
