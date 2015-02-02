class AddTracksTable < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
      t.string :title
      t.text :permalink_url
      t.string :description
      t.text :avatar_url
      t.integer :user_id

      t.timestamps
    end
  end
end
