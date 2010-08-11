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
    redirect_to alcools_path
  end
  
  def script
    # if @alcool.quantity <= 5
      
  end

end
