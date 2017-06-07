class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  # To allow new fields through Devise
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, :keys => [:full_name, :preferred_name, :grad_year, :hometown, :summer_internship, :kellogg_memory,:grow_up, :ten_year_goals, :anything_else, :profile_photo])

    devise_parameter_sanitizer.permit(:account_update, :keys => [:full_name, :preferred_name, :grad_year, :hometown, :summer_internship, :kellogg_memory,:grow_up, :ten_year_goals, :anything_else, :profile_photo])
  end
  
end
