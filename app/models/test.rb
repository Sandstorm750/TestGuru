class Test < ApplicationRecord

  belongs_to :category
  belongs_to :user
  has_many :questions
  has_many :user_tests
  has_many :users, through: :user_tests

  validates :title, presence: true,
                    uniqueness: { scope: :level }
  validates :level, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  scope :simple, -> { by_level(0..1)}
  scope :middle, -> { by_level(2..4)}
  scope :difficult, -> { by_level(5..Float::INFINITY)}

  scope :by_level, ->(level){ where(level: level) }

  def self.find_category(category)
    joins(:category).where(categories: { title: category })
  end

  def self.ordered_test_titles_by_category (category)
    find_category(category).order(title: :desc).pluck(:title)
  end
end
