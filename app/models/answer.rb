class Answer < ApplicationRecord
  belongs_to :question

  validate :validate_diapason, on: :create

  scope :correct_answer, -> { where(correct: true)}

  # def quest
  #   question.answers.include(question_id: question.id)
  #
  # end

  # quest = question.answers.include(question_id: question.id)

  private

  # def validate_diapason
  #   errors.add(:question) unless (1..4).include? (Answer.where(question_id = question.id))
  # end

  def validate_diapason
    errors.add(:question) unless (0..4).include? question.answers.count
  end
end
