class Consumer < ApplicationRecord
  has_many :consumer_answers
  has_many :answers, through: :consumer_answers
end
