class Answer < ApplicationRecord
  belongs_to :question

  validate :validate_diapason, on: :create

  scope :correct, -> { where(correct: true)}

  private

  def validate_diapason
    errors.add(:question) unless (0..3).include? question.answers.count
  end
end
