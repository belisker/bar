class AlcoolsController < ApplicationController

  def index
    @alcools = Alcool.all
  end

  def new
    @alcool = Alcool.new
  end
    
  def create
    @alcool = Alcool.new(params[:alcool])
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
    if @alcool.quantity > 0
      @alcool.save
      if @alcool.quantity <= @alcool.limit_alcool
        redirect_to command_path
      else  
        redirect_to alcools_path
      end
    else
      render "_error_quantity_under_limit"
    end
  end
  
  # def order_command
  #     @alcool = Alcool.find(params[:id])
  #     render :action => "send_mail"
  #   end
    
  def send_mail
    @alcool = Alcool.find(params[:id])
    @alcool.quantity_command = params[:quantity_command].to_i
    if @alcool.save
      AlcoolMailer.order_command(@alcool).deliver
      redirect_to alcools_path
    end
  end  
    
  def command
    @alcool = Alcool.find(params[:id])
  end

end
