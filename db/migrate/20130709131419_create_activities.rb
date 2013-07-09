class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.datetime :start_time
      t.datetime :end_time
      t.string :type
      t.integer :tracker_id

      t.timestamps
    end
    add_index :activities, :tracker_id

  end
end
