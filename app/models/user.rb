class User < ApplicationRecord
  def level_tests(level)
    Test.joins('JOIN user_tests ON user_tests.test_id = tests.id')
    .where('user_tests.user_id = ? AND tests.level = ?', self.id, level)
  end

  has_many :user_tests
  has_many :tests, through: :user_tests
  has_many :tests
end
