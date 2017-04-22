class AddLocaleToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :language, :string, default: 'fr'
  end
end
