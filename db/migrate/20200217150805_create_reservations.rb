class CreateReservations < ActiveRecord::Migration[6.0]
  def change
    create_table :reservations do |t|
      t.date :date
      t.references :bar, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.integer :number_of_guest

      t.timestamps
    end
  end
end
