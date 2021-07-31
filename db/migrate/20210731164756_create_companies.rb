class CreateCompanies < ActiveRecord::Migration[6.1]
  def change
    create_table :companies, id: :uuid do |t|
      t.string :name, null: false
      t.text :description

      t.timestamps
    end
  end
end
