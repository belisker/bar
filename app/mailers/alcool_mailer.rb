class AlcoolMailer < ActionMailer::Base
  default :from => "aatest92@yahoo.com"
  
  def order_command(alcool)
    @alcool = alcool
    mail(:to =>"lrodrigues@hypios.com", :subject => "Order alcool")
  end
end
