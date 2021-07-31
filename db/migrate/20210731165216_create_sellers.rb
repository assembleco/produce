class CreateSellers < ActiveRecord::Migration[6.1]
  def change
    create_table :sellers, id: :uuid do |t|
      t.belongs_to :company, null: false, foreign_key: true, type: :uuid
      t.string :name, null: false

      t.timestamps
    end
  end
end
