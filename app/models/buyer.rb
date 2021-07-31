class Buyer < ApplicationRecord
  has_many :bank_cards
  has_many :bids
  has_many :purchases
end
