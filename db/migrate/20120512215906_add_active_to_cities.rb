class AddActiveToCities < ActiveRecord::Migration
  def change
    add_column :cities, :active, :boolean
  end
end
