class CreateTrackers < ActiveRecord::Migration
  def change
    create_table :trackers do |t|
      t.belongs_to :user, index: true
      t.string :name
      t.text :description
      t.integer :current_weight
      t.integer :goal_weight
      t.integer :happiness_index

      t.timestamps
    end
  end
end
