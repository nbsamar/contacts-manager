class ContactsController < ApplicationController
  before_action :authenticate_user!

  def index

  end
  def new
    @contact = Contact.new
    @phone_number = PhoneNumber.new(phone_number_params)
  end
  def create
    # @address = Address.new(address_params)
    @contact = Contact.new(contact_params)
    @contact.user = current_user
    @phone_number = PhoneNumber.new(phone_number_params)
    @phone_number.contact = @contact.id
    # @address.contact = contact
    # @contact.phone_numbers.build
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
  # private
  def contact_params
    params.require(:contact).permit(:givenName, :familyName, :email)
  end
  def phone_number_params
    params.require(:phone_number).permit(:phoneNumber)
  end
  # def address_params
  #   params.require(:address).permit(:city, :street, :region, :postcode, :country)
  # end
end
