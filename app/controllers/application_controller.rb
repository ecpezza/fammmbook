class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, :keys => [:full_name, :preferred_name, :grad_year, :hometown, :profile_photo, :summer_internship, :kellogg_memory, :grow_up, :ten_year_goals, :anything_else])

    devise_parameter_sanitizer.permit(:account_update, :keys => [:full_name, :preferred_name, :grad_year, :hometown, :profile_photo, :summer_internship, :kellogg_memory, :grow_up, :ten_year_goals, :anything_else])
  end

  # To allow new fields through Devise -- attempt 1
  # before_action :configure_permitted_parameters, if: :devise_controller?
  #
  # protected
  #
  # def configure_permitted_parameters
  #   devise_parameter_sanitizer.permit(:sign_up => [:full_name, :preferred_name, :grad_year, :hometown, :summer_internship, :kellogg_memory, :grow_up, :ten_year_goals, :anything_else, :profile_photo])
  #
  #   devise_parameter_sanitizer.permit(:account_update => [:full_name, :preferred_name, :grad_year, :hometown, :summer_internship, :kellogg_memory, :grow_up, :ten_year_goals, :anything_else, :profile_photo])
  # end


# METHOD TO GET THROUGH DEVISE FOUND ON STACK OVERFLOW: http://jacopretorius.net/2014/03/adding-custom-fields-to-your-devise-user-model-in-rails-4.html
  # def sign_up_params
  #   params.require(:user).permit(:full_name, :preferred_name, :grad_year, :hometown, :summer_internship, :kellogg_memory, :grow_up, :ten_year_goals, :anything_else, :profile_photo)
  # end
  #
  # def account_update_params
  #   params.require(:user).permit(:full_name, :preferred_name, :grad_year, :hometown, :summer_internship, :kellogg_memory, :grow_up, :ten_year_goals, :anything_else, :profile_photo)
  # end

end
