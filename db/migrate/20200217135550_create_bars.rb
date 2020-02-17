class CreateBars < ActiveRecord::Migration[6.0]
  def change
    create_table :bars do |t|
      t.string :name
      t.text :description
      t.integer :capacity
      t.string :category
      t.string :address
      t.time :opening_hours
      t.date :opening_days
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
