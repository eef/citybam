class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name
      t.text :description
      t.references :contactable, :polymorphic => true
      t.timestamps
    end
  end
end
