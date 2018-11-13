class AddPhotoToGods < ActiveRecord::Migration[5.2]
  def change
    add_column :gods, :photo, :string
  end
end
