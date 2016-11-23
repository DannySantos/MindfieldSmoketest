class CreateConsumerAnswers < ActiveRecord::Migration[5.0]
  def change
    create_table :consumer_answers do |t|
      t.references :consumer, foreign_key: true
      t.references :answer, foreign_key: true

      t.timestamps
    end
  end
end
