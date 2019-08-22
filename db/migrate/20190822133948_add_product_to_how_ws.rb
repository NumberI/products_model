class AddProductToHowWs < ActiveRecord::Migration[5.2]
  def change
    add_reference :how_ws, :product, foreign_key: true
  end
end
