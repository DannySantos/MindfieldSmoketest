class ExpertsController < ApplicationController
  def new
    @expert = Expert.new
  end

  def create
    Expert.create(expert_params)
    redirect_to success_experts_path
  end
  
  def success
    
  end
  
  private
  
  def expert_params
    params.require(:expert).permit(:name, :email)
  end
end
