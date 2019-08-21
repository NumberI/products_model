class AddProductToWhereWs < ActiveRecord::Migration[5.2]
  def change
    add_reference :where_ws, :product, foreign_key: true
  end
end
