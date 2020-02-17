class AddOpeningDaysToBars < ActiveRecord::Migration[6.0]
  def change
    add_column :bars, :opening_days, :string, array: true, default: []
  end
end
