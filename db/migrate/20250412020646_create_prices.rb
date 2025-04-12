class CreatePrices < ActiveRecord::Migration[8.0]
  def change
    create_table :prices do |t|
      t.decimal :value
      t.references :product, null: false, foreign_key: true
      t.date :valid_from
      t.date :valid_to

      t.timestamps
    end
  end
end
