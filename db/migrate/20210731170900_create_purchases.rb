class CreatePurchases < ActiveRecord::Migration[6.1]
  def change
    create_table :purchases, id: :uuid do |t|
      t.belongs_to :buyer, null: false, foreign_key: true, type: :uuid
      t.belongs_to :company, null: false, foreign_key: true, type: :uuid
      t.belongs_to :seller, null: false, foreign_key: true, type: :uuid
      t.integer :price, null: false

      t.timestamps
    end
  end
end
