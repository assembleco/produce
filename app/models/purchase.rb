class Purchase < ApplicationRecord
  belongs_to :buyer
  belongs_to :company
  belongs_to :seller
end
