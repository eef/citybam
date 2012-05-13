class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.string :name
      t.text :short_description
      t.text :long_description

      t.timestamps
    end
  end
end
