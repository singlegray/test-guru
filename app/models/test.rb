class Test < ApplicationRecord
  belongs_to :category
  belongs_to :author, class_name: "User", foreign_key: "user_id"
  has_many :questions
  has_many :users_passed_tests
  has_many :users, through: :users_passed_tests

  def self.test_by_category(category)
    joins(:category).where("categories.title = ?", category).order(title: :desc).pluck(:title)
  end
end
