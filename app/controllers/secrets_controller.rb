class SecretsController < ApplicationController
  before_action :require_login
  skip_before_action :require_login, only: [:show]

  def hello

  end

  def show
    redirect_to '/login' if session[:name].blank?
  end

  private
  def require_login
    return head(:forbidden) unless session.include? :name
  end

end
