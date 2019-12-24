class Answer < ApplicationRecord
  belongs_to :question

  validate :validate_diapason, on: :create

  scope :correct_answer, -> { where(correct: true)}

  private

  def validate_diapason
    errors.add(:question) unless (0..4).include? question.answers.count
  end
end
