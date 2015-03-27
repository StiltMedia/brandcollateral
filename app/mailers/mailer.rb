class Mailer < ApplicationMailer



  def contact_form(contact)
    @contact = contact
    mail :to  => "marknatera@gmail.com", :from => "SwimShow@swimshow.com", :subject => "Retailer Pre-Registration 2015"
  end



end
