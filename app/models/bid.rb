class Bid < ApplicationRecord
  belongs_to :buyer
  belongs_to :bank_card
end
