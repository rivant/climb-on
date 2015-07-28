class AddColumnRegionToSection < ActiveRecord::Migration
  def change
    add_column :sections, :region, :string
  end
end
