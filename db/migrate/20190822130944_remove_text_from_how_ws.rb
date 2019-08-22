class RemoveTextFromHowWs < ActiveRecord::Migration[5.2]
  def change
    remove_column :how_ws, :text, :string
  end
end
