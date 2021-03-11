class Purchase < ApplicationRecord
  belongs_to :promo_code, optional: true
  belongs_to :course,     optional: true
end
