class ChangeTypeOfColumn2 < ActiveRecord::Migration[5.2]
  def change
  	change_column :where_ws, :domain, :string, array: true, default: '{}'
  	change_column :where_ws, :type, :string, array: true, default: '{}'
  	change_column :where_ws, :os, :string, array: true, default: '{}'
  end
end
