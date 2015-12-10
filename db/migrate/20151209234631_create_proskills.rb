class CreateProskills < ActiveRecord::Migration
  def change
    create_table :proskills do |t|
      t.integer :skill_id
      t.integer :proyecto_id

      t.timestamps null: false
    end
  end
end
