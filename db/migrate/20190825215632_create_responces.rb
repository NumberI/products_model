class CreateResponces < ActiveRecord::Migration[5.2]
  def change
    create_table :responses do |t|
    	t.references :product, null: false, index: true
      t.references :user, null: false, index: true
      t.timestamps
    end
  end
end
