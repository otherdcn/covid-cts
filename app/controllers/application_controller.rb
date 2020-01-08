class ApplicationController < ActionController::Base
  before_action :require_login
  before_action :initialize_country
  before_action :initialize_namibian_regions_and_cities
  helper_method :current_user

  def current_user
   if session[:user_id]
     @current_user ||= User.find(session[:user_id])
   else
     @current_user = nil
   end
  end

  def logged_in?
    !current_user.nil?
  end

  def cities
    render json: CS.cities(params[:state], :na).to_json
  end

  private
    def initialize_country
      @country_array = Array.new
      CS.countries.each { |k,v| @country_array.push(v) }
    end

    def initialize_namibian_regions_and_cities
      @region_array = Array.new
      @namibian_cities = Array.new

      CS.states(:na).each_key { |k| @region_array.push(k)}

      @region_array.each do |region|
        CS.cities(region, :na).each do |city|
          @namibian_cities.push(city)
          @namibian_cities.sort!
        end
      end
    end

    def require_login
      unless logged_in?
        flash[:notice] = "Please login first!"
        redirect_to login_path # halts request cycle
      end
    end
end
