class CreateCoupons < ActiveRecord::Migration[8.0]
  def change
    create_table :coupons do |t|
      t.string :code
      t.string :discount_type
      t.decimal :discount_value
      t.date :valid_from
      t.date :valid_to

      t.timestamps
    end
  end
end
