class AddCoumnToRoles < ActiveRecord::Migration[5.2]
  def change
  	add_column :roles, :user_role, :string
  end
end
