class FixColumnInRoute < ActiveRecord::Migration
  def change
    rename_column :routes, :type, :climb_type
  end
end
