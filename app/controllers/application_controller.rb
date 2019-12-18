class ApplicationController < ActionController::Base
  before_action :require_login
  before_action :initialize_country
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
      CS.countries.each { |k,v| country_array.push(v) }
    end
    def require_login
      unless logged_in?
        flash[:error] = "You must be logged in to access this section"
        redirect_to root_path # halts request cycle
      end
    end
end
