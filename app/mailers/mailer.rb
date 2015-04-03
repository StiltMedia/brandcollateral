class Mailer < ApplicationMailer



  def contact_form(contact)
    @contact = contact
    mail :to  => "leads@brandcollateral.com", :from => "ContactForm@brandcollateral.com", :subject => "Brand Collateral Contact Form"
  end



end
