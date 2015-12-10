class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.string :name
    	t.string :last_name
      t.string :email
      t.string :genre
      t.string :birthday_year
      t.string :user_type
      t.string :organization
      t.string :opinion
      t.string :password_digest

      t.timestamps null: false
    end
  end
end
