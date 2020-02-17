class AddHoursToReservations < ActiveRecord::Migration[6.0]
  def change
        add_column :reservations, :hours, :time
  end
end
