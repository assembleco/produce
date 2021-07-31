class CreateBankCards < ActiveRecord::Migration[6.1]
  def change
    create_table :bank_cards, id: :uuid do |t|
      t.belongs_to :buyer, null: false, foreign_key: true, type: :uuid
      t.string :summary, null: false
      t.string :square_number, null: false
      t.boolean :is_primary, null: false
      t.datetime :deleted_on

      t.timestamps
    end
  end
end
