class PagesController < ApplicationController

  def index
    @contact = Contact.new
  end

  def flashdrives
    @contact = Contact.new
  end

  def create_contact
    @contact = Contact.create(contact_params)
    if @contact.save
      redirect_to "http://brandcollateral.com/pages/thanks"
    end
  end



  private

  def contact_params
    params.require(:contact).permit(:full_name, :company, :email, :phone, :quantity, :capacity, :style_type, :notes)
  end

end
