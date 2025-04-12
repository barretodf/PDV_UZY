class CreateSales < ActiveRecord::Migration[8.0]
  def change
    create_table :sales do |t|
      t.references :customer, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.decimal :total
      t.datetime :sale_date
      t.string :status

      t.timestamps
    end
  end
end
