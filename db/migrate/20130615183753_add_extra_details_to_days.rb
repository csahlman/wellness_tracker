class AddExtraDetailsToDays < ActiveRecord::Migration
  def change
    add_column :days, :extra_details, :text
  end
end
