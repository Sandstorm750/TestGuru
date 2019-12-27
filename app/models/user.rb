class User < ApplicationRecord

  has_many :user_tests
  has_many :tests, through: :user_tests

  has_many :transfers, class_name: "Test"

  validates :email, presence: true

  def level_tests(level)
    self.tests.by_level(level)
  end
end
