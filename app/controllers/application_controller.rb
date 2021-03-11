class ApplicationController < ActionController::Base
  before_action :basic_auth
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_any!


  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname, :last_name, :first_name, :last_name_kana, :first_name_kana, :birthday, :gender, :phone_number, :profile, :shop_name, :phone_number, :postal_code, :prefectures, :city, :address, :building_name, :profile, :shop_link, payment_type_ids:[]])
  end

  private
  def basic_auth
    authenticate_or_request_with_http_basic do |username, password|
      username == ENV["BASIC_AUTH_USER"] && password == ENV["BASIC_AUTH_PASSWORD"]
    end
  end

  def authenticate_any!
    if shop_user_signed_in?
      
    else
        authenticate_main_user!
    end
  end
end
