class Test < ApplicationRecord
  def self.tests_by_category(category)
    Test.joins('JOIN categories ON tests.category_id = categories.id')
    .where('categories.title = :category', category: category)
    .order('tests.title DESC')
    .pluck('tests.title')
  end

  belongs_to :category
  belongs_to :user
  has_many :questions
  has_many :user_tests
  has_many :users, through: :user_tests

end
