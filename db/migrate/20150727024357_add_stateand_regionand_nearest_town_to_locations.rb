class AddStateandRegionandNearestTownToLocations < ActiveRecord::Migration
  def change
    add_column :locations, :state, :string
    add_column :locations, :region, :string
    add_column :locations, :nearest_town, :string
  end
end
