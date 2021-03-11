class PromoCode < ApplicationRecord
  belongs_to :course
  validates :lesson_limit, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 10 }
  validates :duration,     numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 25 }
end
