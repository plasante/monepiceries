class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :fournisseur
      t.integer :price
      t.string :format
      t.string :description
      t.boolean :diabetic
      t.references :category, foreign_key: true
      t.references :store, foreign_key: true

      t.timestamps
    end
  end
end
