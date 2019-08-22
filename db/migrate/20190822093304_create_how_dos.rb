class CreateHowDos < ActiveRecord::Migration[5.2]
  def change
    create_table :how_dos do |t|

      t.timestamps
    end

  end
end
