class CreateRecord < ActiveRecord::Migration
  def change
    create_table :records do |t|
      t.references :user
      t.integer :rating
      t.string :status
      t.integer :ascents
      t.integer :route_id
      t.timestamps
    end
  end
end
