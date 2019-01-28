class CreateActivities < ActiveRecord::Migration[5.2]
  def change
    create_table :activities do |t|
      t.string :name
      t.string :duration
      t.string :photo

      t.timestamps
    end
  end
end
