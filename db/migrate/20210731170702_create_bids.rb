class CreateBids < ActiveRecord::Migration[6.1]
  def change
    create_table :bids, id: :uuid do |t|
      t.belongs_to :buyer, null: false, foreign_key: true, type: :uuid
      t.integer :amount, null: false
      t.belongs_to :bank_card, null: false, foreign_key: true, type: :uuid

      t.timestamps
    end
  end
end
