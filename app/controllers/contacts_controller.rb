class ContactsController < ApplicationController
  before_action :authenticate_user!

  def index

  end
  def new
    @contact = Contact.new
  end
  def create
    @contact = Contact.new(contact_params)
    @contact.user = current_user
    if @contact.save
      flash[:notice] = 'Contact Added'
      redirect_to new_contact_path
    else
      flash[:error] = @contact.errors.full_messages.join(', ').html_safe?
      render :new
    end
  end
  def edit

  end
  def update

  end
  def show

  end
  def destroy

  end
  private
  def contact_params
    params.require(:contact).permit(:givenName, :familyName, :email)
  end
end
