class CreateSectionRoute < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.references :location
      t.string :name
      t.timestamps
    end
  end
end
