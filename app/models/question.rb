class Question < ApplicationRecord
  has_many :answers
  enum receiver: [:expert, :consumer]
end
