class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :name, :null => false
      t.integer :num_kills
      t.integer :strength_level
      t.integer :location_number

      t.timestamps null: false
    end
#  execute "ALTER TABLE games ADD PRIMARY KEY (name);"
  end
end
