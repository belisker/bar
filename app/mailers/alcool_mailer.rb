class AlcoolMailer < ActionMailer::Base
  default :from => "aatest92@yahoo.com"
  
  def order_command(alcool)
    mail(:to => user.mail, :subject => "Order alcool")
  end
end
