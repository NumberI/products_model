class CreateResponses < ActiveRecord::Migration[5.2]
  def change
    create_table :responses do |t|
    	t.integer  :product_id
    	t.integer :user_id
      t.timestamps
    end
    remove_column :users, :product_id
  end
end
