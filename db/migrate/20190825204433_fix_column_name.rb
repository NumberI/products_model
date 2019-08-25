class FixColumnName < ActiveRecord::Migration[5.2]
  def change
  	rename_column :where_ws, :type, :wtype
  end
end
