class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def index
    if current_user.blank?
      redirect_to '/login'
    end
  end

  def current_user
    session[:name]
  end




    # private
    # def require_login
    #   return head(:forbidden) unless session.include? :name
    # end
end
