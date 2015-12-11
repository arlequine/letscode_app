class ChangeColumnPostulations < ActiveRecord::Migration
  def change
  	change_column :postulations, :status,  :string
  end
end
