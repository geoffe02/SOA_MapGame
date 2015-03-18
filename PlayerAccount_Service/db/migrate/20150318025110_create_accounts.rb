class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :name
      t.integer :strength
      t.integer :numkills
      t.integer :location_number
      t.timestamps null: false
    end
  end
end
