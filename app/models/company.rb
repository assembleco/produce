class Company < ApplicationRecord
  has_many :sellers
  has_many :purchases
end
