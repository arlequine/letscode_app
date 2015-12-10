class CreateProyectos < ActiveRecord::Migration
  def change
    create_table :proyectos do |t|
      t.string :title
      t.string :description
      t.string :incentive
      t.string :result
      t.integer :num_students
      t.date :dead_line
      t.integer :empresa_id

      t.timestamps null: false
    end
  end
end
