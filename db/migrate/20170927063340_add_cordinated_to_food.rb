class AddCordinatedToFood < ActiveRecord::Migration[5.0]
  def change
    add_column :foods, :x, :integer
    add_column :foods, :y, :integer
  end
end
