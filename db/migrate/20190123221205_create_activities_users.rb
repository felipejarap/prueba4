class CreateActivitiesUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :activities_users do |t|
      t.integer :user_id 
      t.integer :activity_id 
      t.boolean :completed, default: false
      t.datetime :completed_at

      t.timestamps
    end
  end
end
