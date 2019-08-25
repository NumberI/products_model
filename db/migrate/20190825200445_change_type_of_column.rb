class ChangeTypeOfColumn < ActiveRecord::Migration[5.2]
  def change
  	change_column :where_ws, :domain, :string, array: true, default: [], using: "(string_to_array(domain, ','))"
  	change_column :where_ws, :type, :string, array: true, default: [], using: "(string_to_array(type, ','))"
  	change_column :where_ws, :os, :string, array: true, default: [], using: "(string_to_array(os, ','))"
  end
end
