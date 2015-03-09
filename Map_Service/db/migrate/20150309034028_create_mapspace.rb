class CreateMapspace < ActiveRecord::Migration
  def change
    create_table :mapspace, :id => false do |t|
      t.integer :location_number, :null => false

      t.timestamps null: false
    end
  execute "ALTER TABLE mapspace ADD PRIMARY KEY (location_number);"
  end
end
