class Purchase < ApplicationRecord
  belongs_to :promo_code
  belongs_to :course
end
