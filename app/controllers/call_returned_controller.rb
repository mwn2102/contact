class CallReturnedController < ApplicationController
    
  def edit
    user = Contact.find(params[:id])
    if user
      user.update_attribute(:called_back, true)
      user.update_attribute(:called_at, Time.zone.now)
      flash[:success] = "Thank you for returning the call."
      redirect_to contacts_path
    else
      flash[:danger] = "Error: Contact call not recorded"
      redirect_to contacts_path
    end
  end
  
end
