class ContactsController < ApplicationController
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
    @contact = Contact.new(contact_params)

    if @contact.save
      redirect_to @contact
    else
      render :new
    end
  end

  private
  def contact_params
    params.require(:contact).permit(:first_name, :last_name, :phone_number, :email, :company_name, :birth_date, :address)
  end
end
