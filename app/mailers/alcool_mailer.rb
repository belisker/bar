class AlcoolMailer < ActionMailer::Base
  default :from => "aatest92@yahoo.com"
  
  def order_command(alcool)
    mail(:to =>"njeol@hypios.com", :subject => "Order alcool")
  end
end
