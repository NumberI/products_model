class ChangeColumnDefault < ActiveRecord::Migration[5.2]
  def change
  	change_column :roles, :admin, :boolean, default: false 
  end
end
