module SessionsHelper
    # Logs in the given user.
  def log_in(user)
    session[:attorney_id] = user.id
  end

  # Returns the current logged-in user (if any).
  def current_user
    @current_user ||= Attorney.find_by(id: session[:attorney_id])
  end
  
  # Returns true if the user is logged in, false otherwise.
  def logged_in?
    !current_user.nil?
  end
  
  # Logs out the current user.
  def log_out
    session.delete(:attorney_id)
    @current_user = nil
  end
  
  
end
