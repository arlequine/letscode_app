class CreatePostulations < ActiveRecord::Migration
  def change
    create_table :postulations do |t|
      t.integer :user_id
      t.integer :proyecto_id
      t.boolean :status

      t.timestamps null: false
    end
  end
end
