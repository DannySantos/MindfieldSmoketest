class ConsumersController < ApplicationController
  def edit
    @consumer = Consumer.find(params[:id])
  end

  def create
    @consumer = Consumer.create!
    
    params[:checkbox_ids].each do |answer_id|
      ConsumerAnswer.create(
        consumer_id: @consumer.id,
        answer_id: answer_id
      )
    end
    
    redirect_to edit_consumer_path(@consumer.id)
  end
  
  def update
    @consumer = Consumer.find(params[:id])
    @consumer.update(consumer_params)
    redirect_to success_consumers_path
  end
  
  def questions
    @questions = Question.where(receiver: 1)
  end
  
  def success
    
  end
  
  private
  
  def consumer_params
    params.require(:consumer).permit(:name, :email)
  end
end
