class Campaign2 < ActiveRecord::Base

  after_create :camp2_mailer

  def camp2_mailer
    campaign2 = self
    Mailer.camp2_form(campaign2).deliver_now
  end

end
