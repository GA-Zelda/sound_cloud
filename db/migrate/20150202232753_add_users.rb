class AddUsers < ActiveRecord::Migration
  def change
    create_table :users do |u|
      u.string :name
      u.string :email
      u.string :password_digest
      u.string :location
      u.string :favorite_artist

      u.timestamps
    end
  end
end
