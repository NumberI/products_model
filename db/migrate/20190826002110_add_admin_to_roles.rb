class AddAdminToRoles < ActiveRecord::Migration[5.2]
  def change
    add_column :roles, :admin, :boolean
  end
end
