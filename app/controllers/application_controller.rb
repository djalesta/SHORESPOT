class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user!

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :role])
    devise_parameter_sanitizer.permit(:account_update, keys: [:username])
  end

  def after_sign_up_path_for(resource)
    if resource.role == "Seller"
    seller_listings_path
    else
    listings_path
    end
  end

  def after_sign_in_path_for(resource)
    if resource.role == "Seller"
      seller_listings_path
    else
      listings_path
    end
  end

end
