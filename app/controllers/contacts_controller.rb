class ContactsController < ApplicationController

    before_action :logged_in_user 
                                    
    
    def index
        @contacts = Contact.all
    end
    
    def show
        @contact = Contact.find(params[:id])
    end
    
    def new 
        @contact = Contact.new
    end
    
    def create
        #send mail
        #flash
        @contact = Contact.new(contact_params)
        # This stuff didn't work:
        # @contact.connections.build(params[:attorney_id])
        # @this_contact = Contact.find_by(id: @contact.id)
        # params[:attorney_ids].each do |attorney_id|
        #     @this_contact.connections.create(attorney_id: attorney_id)
        # end
        if @contact.save
            @contact.connections.create(attorney_id: params[:attorney_id])
            
          ContactMailer.new_contact(@contact).deliver_now
          flash[:success] = "Contact saved."
          redirect_to contacts_path
        else
          render 'new'
        end
    end
    
    def edit
        @contact = Contact.find(params[:id])
    end
    
    def update
        # @user = User.find(params[:id])     
        # if @user.update_attributes(user_params)
        #   flash[:success] = "Profile updated"
        #   redirect_to @user
        # else
        #   render 'edit'
        # end
    end
    
    def destroy
        # User.find(params[:id]).destroy
        # flash[:success] = "User deleted"
        # redirect_to users_url
    end
    
    private

        def contact_params
          params.require(:contact).permit(:name,:phone,:email,:address,:referral,:practice_area,:description,:employee,:impression,:called_back,:called_at,:retained,:attorney_ids => [])
        end


    
end
