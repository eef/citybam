class CreateAttachments < ActiveRecord::Migration
  def change
    create_table :attachments do |t|
      t.text :description
      t.string :title
      t.string :file
      t.integer :width
      t.integer :height
      t.references :attachable, :polymorphic => true
      t.timestamps
    end
  end
end

