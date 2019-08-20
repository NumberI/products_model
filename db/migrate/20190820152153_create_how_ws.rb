class CreateHowWs < ActiveRecord::Migration[5.2]
  def change
    create_table :how_ws do |t|
      t.string :text

      t.timestamps
    end
  end
end
