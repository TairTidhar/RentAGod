class CreatePowers < ActiveRecord::Migration[5.2]
  def change
    create_table :powers do |t|
      t.string :name
	  t.timestamps
      
    end

    create_table :god_powers do |t|
      t.references :power, foreign_key: true
      t.references :god, foreign_key: true
	  t.timestamps
      
    end
  end
end
