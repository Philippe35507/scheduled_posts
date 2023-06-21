class CreateFriendsDbs < ActiveRecord::Migration[7.0]
  def change
    create_table :friends_dbs do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.string :tweeter

      t.timestamps
    end
  end
end
