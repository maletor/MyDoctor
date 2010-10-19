class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :admin?

  protected
  
  def authorize
    unless admin?
      flash[:notice] = "Unauthorized access"
      redirect_to root_path
    end
  end

  def admin?  
    session[:password] == "password"  
  end  
  
end
