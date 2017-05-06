class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.references :provider, foreign_key: true
      t.integer :price
      t.string :format
      t.integer :unit_price, default: 0
      t.boolean :diabetic
      t.references :category, foreign_key: true
      t.references :store, foreign_key: true
      t.references :description, foreign_key: true

      t.timestamps
    end
  end
end
