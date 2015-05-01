class PagesController < ApplicationController

  def index
    @contact = Contact.new
  end

  def flashdrives
    @campaign2 = Campaign2.new
  end

  def create_contact
    @contact = Contact.create(contact_params)
    if @contact.save
      redirect_to "http://brandcollateral.com/pages/thanks"
    end
  end

  def create_campaign2
    @campaign2 = Campaign2.create(camp2_params)
    if @campaign2.save
      redirect_to "http://brandcollateral.com/pages/thanks"
    end
  end



  private

  def contact_params
    params.require(:contact).permit(:full_name, :company, :email, :phone, :quantity, :capacity, :style_type, :notes)
  end

  def camp2_params
    params.require(:campaign2).permit(:full_name, :company, :email, :phone, :quantity, :capacity, :style_type, :notes)
  end

end
