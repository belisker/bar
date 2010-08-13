class AlcoolsController < ApplicationController

  def index
    @alcools = Alcool.all
  end

  def new
    @alcool = Alcool.new()
  end
    
  def create
    @alcool = Alcool.create(params[:alcool])
    if @alcool.save
      redirect_to alcools_path
    else
      render "new"
    end
  end
    
  def show
    @alcool = Alcool.find(params[:id])
  end
  
  def update
    @alcool = Alcool.find(params[:id])
      
    if params[:increase]
      @alcool.quantity += params[:quantity].to_i
    else
      @alcool.quantity -= params[:quantity].to_i
    end
    @alcool.save
    if @alcool.quantity <= 5
      redirect_to command_path
    else  
      redirect_to alcools_path
    end
  end
  
  # def order_command
  #     @alcool = Alcool.find(params[:id])
  #     render :action => "send_mail"
  #   end
    
  def send_mail
  # if @alcool.save
    redirect_to alcools_path
    UserMailer.order_alcool(@alcool).deliver
  # end
  end  
    
  def command
    @alcool = Alcool.find(params[:id])
  end

end
