class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :title
      t.text :question
      t.integer :proyecto_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
