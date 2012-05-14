class CreateLaunchAlerts < ActiveRecord::Migration
  def change
    create_table :launch_alerts do |t|
      t.string :email

      t.timestamps
    end
  end
end
