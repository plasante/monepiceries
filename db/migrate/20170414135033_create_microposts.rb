class CreateMicroposts < ActiveRecord::Migration[5.0]
  def change
    create_table :microposts do |t|
      t.text :content
      t.references :user, foreign_key: true

      t.timestamps
    end
    # We expect to retrieve all the microposts associated with a given user_id in reverse order of creation.
    add_index :microposts, [:user_id, :created_at]
  end
end
