class AddPhotoToBars < ActiveRecord::Migration[6.0]
  def change
    add_column :bars, :photo, :string
  end
end
