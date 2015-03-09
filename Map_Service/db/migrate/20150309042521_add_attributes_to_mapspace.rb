class AddAttributesToMapspace < ActiveRecord::Migration
  def change
      add_column :mapspace, :name, :string
      add_column :mapspace, :latitude, :integer
      add_column :mapspace, :longitude, :integer
      add_column :mapspace, :north_adjoin, :integer
      add_column :mapspace, :south_adjoin, :integer
      add_column :mapspace, :east_adjoin, :integer
      add_column :mapspace, :west_adjoin, :integer
      add_column :mapspace, :obstacle, :integer
      add_column :mapspace, :opponent, :integer
  end
end
