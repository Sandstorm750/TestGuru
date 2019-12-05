class AddIdsToQuestionsAndAnswers < ActiveRecord::Migration[5.2]
  def change
    add_column(:questions, :test_id, :integer)
    add_column(:answers, :question_id, :integer)
  end
end
