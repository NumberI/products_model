class CreateWhereWs < ActiveRecord::Migration[5.2]
  def change
    create_table :where_ws do |t|
      t.string :domain
      t.string :type
      t.string :os

      t.timestamps
    end
  end
end
