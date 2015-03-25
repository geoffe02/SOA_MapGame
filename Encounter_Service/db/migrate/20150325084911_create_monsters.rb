class CreateMonsters < ActiveRecord::Migration
  def change
    create_table :monsters, :id => false do |t|
      t.integer :location, :null => false
      t.string :name
      t.string :description
      t.integer :strength

      t.timestamps null: false
    end
  execute "ALTER TABLE monsters ADD PRIMARY KEY (location);"
  end
end
