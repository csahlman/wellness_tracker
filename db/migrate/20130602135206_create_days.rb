class CreateDays < ActiveRecord::Migration
  def change
    create_table :days do |t|
      t.integer :hours_of_sleep
      t.integer :hours_of_work
      t.integer :hours_of_leisure
      t.integer :minutes_spent_exercising
      t.integer :calories_consumed
      t.integer :alcoholic_drinks
      t.integer :happiness_index
      t.belongs_to :tracker, index: true

      t.timestamps
    end
  end
end
