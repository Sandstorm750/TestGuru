class Test < ApplicationRecord

  belongs_to :category
  belongs_to :user
  has_many :questions
  has_many :user_tests
  has_many :users, -> (level) { where(level: level)},through: :user_tests

  validates :title, presence: true,
                    uniqueness: { scope: :level }
  validates :level, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
                    #uniqueness: { scope: :level }

  validate :validate_min_level, on: :create

  scope :simple, -> { by_level(0..1)}
  scope :middle, -> { by_level(2..4)}
  scope :difficult, -> { by_level(5..Float::INFINITY)}

  scope :by_level, ->(level){ where(level: level) }

  scope :find_category, -> (category) { joins('JOIN categories ON tests.category_id = categories.id').where('categories.title = :category', category: category)}

  def self.ordered_test_titles_by_category (category)
    find_category(category).order(title: :desc).pluck(:title)
  end

  # def self.tests_by_category(category)
  #   Test.joins('JOIN categories ON tests.category_id = categories.id')
  #   .where('categories.title = :category', category: category)
  #   .order('tests.title DESC')
  #   .pluck('tests.title')
  # end

  private

  def validate_min_level
    errors.add(:level) if level.to_i < 0
  end
end
