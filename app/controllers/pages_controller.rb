class PagesController < ApplicationController

  def index
    @contact = Contact.new
  end


  def create_contact
    @contact = Contact.create(contact_params)
    if @contact.save
      redirect_to thanks_path
    end
  end



  private

  def contact_params
    params.require(:contact).permit(:full_name, :company, :email, :phone, :quantity, :capacity, :notes)
  end

end
