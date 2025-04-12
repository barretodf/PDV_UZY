class CreateCredits < ActiveRecord::Migration[8.0]
  def change
    create_table :credits do |t|
      t.references :customer, null: false, foreign_key: true
      t.decimal :amount
      t.decimal :used_amount
      t.date :valid_until

      t.timestamps
    end
  end
end
