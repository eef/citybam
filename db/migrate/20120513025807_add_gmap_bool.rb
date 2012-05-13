class AddGmapBool < ActiveRecord::Migration
  def change
    add_column :cities, :gmaps, :boolean
  end
end
