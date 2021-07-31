class CreateBuyers < ActiveRecord::Migration[6.1]
  def change
    create_table :buyers, id: :uuid do |t|
      t.string :name, null: false
      t.string :phone
      t.string :email
      t.string :square_number

      t.timestamps
    end
  end
end
