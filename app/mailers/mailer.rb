class Mailer < ApplicationMailer



  def contact_form(contact)
    @contact = contact
    mail :to  => "leads@brandcollateral.com", :from => "#{@contact.email}", :subject => "Brand Collateral Contact Form"
  end



end
