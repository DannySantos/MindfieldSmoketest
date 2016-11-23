class ConsumerAnswersController < ApplicationController
  def index
    @consumer_answers = ConsumerAnswer.all
  end
end
