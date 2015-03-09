class CreateMapspaces < ActiveRecord::Migration
  def change
    create_table :mapspaces, :id => false do |t|
      t.integer :location_number, :null => false

      t.timestamps null: false
    end
  execute "ALTER TABLE mapspaces ADD PRIMARY KEY (location_number);"
  end
end
