class CreateFoodEntries < ActiveRecord::Migration
  def change
    create_table :food_entries do |t|
      t.belongs_to :time_period, index: true
      t.belongs_to :user, index: true
      t.string :name
      t.integer :calories
      t.string :description

      t.timestamps
    end
  end
end
