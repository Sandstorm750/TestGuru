class Category < ApplicationRecord
  has_many :tests

  validates :title, presence: true

  scope :increase, -> { order(title: :asc)}
  #scope :show_title, -> (title){ where(title: title)}
end
