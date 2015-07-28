class CreateRoute < ActiveRecord::Migration
  def change
    create_table :routes do |t|
      t.references :section
      t.string :name
      t.string :difficulty
      t.string :type
      t.integer :bolts
      t.string :height
      t.timestamps
    end
  end
end
