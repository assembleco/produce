require 'faker'

Purchase.destroy_all

Bid.destroy_all
BankCard.destroy_all
Buyer.destroy_all

Seller.destroy_all
Company.destroy_all

12.times do
  name = Faker::Name.name

  buyer = Buyer.create!(
    name: name,
    phone: Faker::PhoneNumber.cell_phone,
    email: Faker::Internet.email(name: name)
  )

  [1,2].sample.times.map do
    buyer.bank_cards.create!(
      summary: "Card ending in #{Faker::Number.number(digits: 4)}",
      square_number: Faker::Number.number(digits: 12),
      is_primary: false,
    )
  end
  # buyer.bank_cards.last.set_primary

  bids = [1,2,3].sample.times.map do
    buyer.bids.create!(
      bank_card: buyer.bank_cards.sample,
      amount: Faker::Number.number(digits: [4,5].sample),
    )
  end
end

4.times do
  company = Company.create!(
    name: Faker::Company.name + " " + Faker::Company.suffix,
    description: "Local employee-owned farm featuring seasonal produce.",
  )

  [1,2,3,4].sample.times.map do
    company.sellers.create!(
      name: Faker::Name.name,
    )
  end
end

36.times do
  buyer = Buyer.all.sample
  company = Company.all.sample

  buyer.purchases.create!(
    company: company,
    seller: company.sellers.sample,
    price: Faker::Number.number(digits: [3,4].sample),
  )
end
