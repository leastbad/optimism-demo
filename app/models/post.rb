class Post < ApplicationRecord
  validates :name, :age, :body, presence: true
  validates :name, uniqueness: true
  validates :age, numericality: {only_integer: true, greater_than_or_equal_to: 18}
  validates :body, length: {minimum: 10}
  validates :consent, acceptance: {message: "must be given"}
end
