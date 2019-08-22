class AddDescribedToHowW < ActiveRecord::Migration[5.2]
  def change
    add_reference :infos, :described, polymorphic: true
  end
end
