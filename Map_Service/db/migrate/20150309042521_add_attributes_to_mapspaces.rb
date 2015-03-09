class AddAttributesToMapspaces < ActiveRecord::Migration
  def change
      add_column :mapspaces, :name, :string
      add_column :mapspaces, :latitude, :double
      add_column :mapspaces, :longitude, :double
      add_column :mapspaces, :north_adjoin, :integer
      add_column :mapspaces, :south_adjoin, :integer
      add_column :mapspaces, :east_adjoin, :integer
      add_column :mapspaces, :west_adjoin, :integer
      add_column :mapspaces, :obstacle, :integer
      add_column :mapspaces, :opponent, :integer
  end
end
