class AddClosingHoursToBars < ActiveRecord::Migration[6.0]
  def change
    add_column :bars, :closing_hours, :time
  end
end
