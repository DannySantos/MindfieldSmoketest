class ConsumersController < ApplicationController
  def new
    @consumer = Consumer.new
    @questions = Question.where(receiver: 1)
  end

  def create
    Consumer.create(consumer_params)
    redirect_to success_consumers_path
  end
  
  def success
    
  end
  
  private
  
  def consumer_params
    params.require(:consumer).permit(:name, :email)
  end
end
