class Mailer < ApplicationMailer



  def contact_form(contact)
    @contact = contact
    mail :to  => "leads@brandcollateral.com", :from => "ContactForm@brandcollateral.com", :subject => "Brand Collateral Contact Form"
  end

  def camp2_form(campaign2)
    @campaign2 = campaign2
    mail :to  => "mark@stiltmedia.com", :from => "Campaign_2@brandcollateral.com", :subject => "Brand Collateral Campaign 2 Form"
  end



end
