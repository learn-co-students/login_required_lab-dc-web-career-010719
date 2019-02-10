class SessionsController < ApplicationController
  def new
  end

  def create
    if !params[:name].nil?
      if !params[:name].empty?
        session[:name] = params[:name]
        redirect_to root_path
      end
    end
    redirect_to login_path if !session[:name]
  end

  def destroy
    session.delete :name
    redirect_to login_path
  end
end
