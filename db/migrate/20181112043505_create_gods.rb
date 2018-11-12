class CreateGods < ActiveRecord::Migration[5.2]
  def change
    create_table :gods do |t|
      t.string :name
      t.string :location
      t.string :description
      t.references :user, foreign_key: true


      t.timestamps
    end
  end
end
