class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.string :country
      t.string :region
      t.string :name
      t.string :postal_code
      t.float :lat
      t.float :lng
      t.integer :metro_code
      t.integer :area_code

      t.timestamps
    end
  end
end
