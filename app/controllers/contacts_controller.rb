class ContactsController < ApplicationController
    def new
        @contact = Contact.new
    end
    def create
        @contact = Contact.new(contact_params)
        if @contact.save
            flash[:success] = 'Message sent.'
            redirect_to root_path
        else
            flash[:danger] = 'Error occured'
            redirect_to new_contact_path, notice: "Error Occurred. Message not sent."
        end
    end
    
    private
    def contact_params
        params.require(:contact).permit(:name, :email, :message)
    end
end